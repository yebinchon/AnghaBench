; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mknod/extr_mknod.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mknod/extr_mknod.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IFCHR = common dso_local global i32 0, align 4
@S_IFBLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"node must be type 'b' or 'c'\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: non-numeric major number\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: non-numeric minor number\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"major or minor number too large\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"setting ownership on %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 5
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 6
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (...) @usage()
  br label %25

25:                                               ; preds = %23, %20, %17, %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp sge i32 %26, 5
  br i1 %27, label %28, label %118

28:                                               ; preds = %25
  store i32 438, i32* %9, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 2
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 99
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @S_IFCHR, align 4
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %55

40:                                               ; preds = %28
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 98
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @S_IFBLK, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %54

52:                                               ; preds = %40
  %53 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %48
  br label %55

55:                                               ; preds = %54, %36
  store i32 0, i32* @errno, align 4
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 3
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @strtoul(i8* %58, i8** %12, i32 0)
  store i64 %59, i64* %13, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 3
  %63 = load i8*, i8** %62, align 8
  %64 = icmp eq i8* %60, %63
  br i1 %64, label %70, label %65

65:                                               ; preds = %55
  %66 = load i8*, i8** %12, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65, %55
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 3
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32, i32* @errno, align 4
  store i32 %76, i32* %6, align 4
  store i32 0, i32* @errno, align 4
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 4
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strtoul(i8* %79, i8** %12, i32 0)
  store i64 %80, i64* %14, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 4
  %84 = load i8*, i8** %83, align 8
  %85 = icmp eq i8* %81, %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %75
  %87 = load i8*, i8** %12, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86, %75
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 4
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load i32, i32* @errno, align 4
  %98 = load i32, i32* %6, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %6, align 4
  %100 = load i64, i64* %13, align 8
  %101 = load i64, i64* %14, align 8
  %102 = call i64 @makedev(i64 %100, i64 %101)
  store i64 %102, i64* %10, align 8
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %96
  %106 = load i64, i64* %10, align 8
  %107 = call i64 @major(i64 %106)
  %108 = load i64, i64* %13, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load i64, i64* %10, align 8
  %112 = call i64 @minor(i64 %111)
  %113 = load i64, i64* %14, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %110, %105, %96
  %116 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %110
  br label %121

118:                                              ; preds = %25
  %119 = load i32, i32* @S_IFCHR, align 4
  %120 = or i32 438, %119
  store i32 %120, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %121

121:                                              ; preds = %118, %117
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %7, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp eq i32 6, %122
  br i1 %123, label %124, label %142

124:                                              ; preds = %121
  %125 = load i8**, i8*** %5, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 5
  %127 = load i8*, i8** %126, align 8
  %128 = call i8* @strchr(i8* %127, i8 signext 58)
  store i8* %128, i8** %11, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load i8*, i8** %11, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %11, align 8
  store i8 0, i8* %131, align 1
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 @a_gid(i8* %133)
  store i32 %134, i32* %8, align 4
  br label %137

135:                                              ; preds = %124
  %136 = call i32 (...) @usage()
  br label %137

137:                                              ; preds = %135, %130
  %138 = load i8**, i8*** %5, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 5
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @a_uid(i8* %140)
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %137, %121
  %143 = load i8**, i8*** %5, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 1
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i64, i64* %10, align 8
  %148 = call i64 @mknod(i8* %145, i32 %146, i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %142
  %151 = load i8**, i8*** %5, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 1
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %153)
  br label %155

155:                                              ; preds = %150, %142
  %156 = load i32, i32* %4, align 4
  %157 = icmp eq i32 6, %156
  br i1 %157, label %158, label %172

158:                                              ; preds = %155
  %159 = load i8**, i8*** %5, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 1
  %161 = load i8*, i8** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i64 @chown(i8* %161, i32 %162, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %158
  %167 = load i8**, i8*** %5, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 1
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %169)
  br label %171

171:                                              ; preds = %166, %158
  br label %172

172:                                              ; preds = %171, %155
  %173 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @makedev(i64, i64) #1

declare dso_local i64 @major(i64) #1

declare dso_local i64 @minor(i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @a_gid(i8*) #1

declare dso_local i32 @a_uid(i8*) #1

declare dso_local i64 @mknod(i8*, i32, i64) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @chown(i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
