; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/ses/srcs/extr_chpmon.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/ses/srcs/extr_chpmon.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"usage: %s polling-interval device [ device ... ]\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@SESIOC_SETENCSTAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: SESIOC_SETENCSTAT1: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SESIOC_GETENCSTAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: SESIOC_GETENCSTAT: %s\0A\00", align 1
@BADSTAT = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"%s: Clearing CRITICAL condition\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: Setting CRITICAL from:\00", align 1
@SES_ENCSTAT_UNRECOV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c" UNRECOVERABLE\00", align 1
@SES_ENCSTAT_CRITICAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c" CRITICAL\00", align 1
@SES_ENCSTAT_NONCRITICAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c" NONCRITICAL\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"%s: SESIOC_SETENCSTAT 2: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 1, i32* %3, align 4
  br label %181

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @atoi(i8* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32* @malloc(i32 %23)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %181

29:                                               ; preds = %18
  %30 = load i32*, i32** %10, align 8
  %31 = bitcast i32* %30 to i8*
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @bzero(i8* %31, i32 %32)
  br label %34

34:                                               ; preds = %178, %29
  store i32 2, i32* %8, align 4
  br label %35

35:                                               ; preds = %175, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %178

39:                                               ; preds = %35
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @O_RDWR, align 4
  %46 = call i32 @open(i8* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %39
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @perror(i8* %54)
  br label %175

56:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @SESIOC_SETENCSTAT, align 4
  %59 = ptrtoint i32* %9 to i32
  %60 = call i64 @ioctl(i32 %57, i32 %58, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load i32, i32* @stderr, align 4
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* @errno, align 4
  %70 = call i8* @strerror(i32 %69)
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %68, i8* %70)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @close(i32 %72)
  br label %175

74:                                               ; preds = %56
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @SESIOC_GETENCSTAT, align 4
  %77 = ptrtoint i32* %9 to i32
  %78 = call i64 @ioctl(i32 %75, i32 %76, i32 %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = load i32, i32* @stderr, align 4
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* @errno, align 4
  %88 = call i8* @strerror(i32 %87)
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %86, i8* %88)
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @close(i32 %90)
  br label %175

92:                                               ; preds = %74
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @BADSTAT, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %92
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %97
  %105 = load i32, i32* @stdout, align 4
  %106 = load i8**, i8*** %5, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %110)
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 0, i32* %115, align 4
  br label %116

116:                                              ; preds = %104, %97
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @close(i32 %117)
  br label %175

119:                                              ; preds = %92
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 1, i32* %123, align 4
  %124 = load i32, i32* @stdout, align 4
  %125 = load i8**, i8*** %5, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %129)
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @SES_ENCSTAT_UNRECOV, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %119
  %136 = load i32, i32* @stdout, align 4
  %137 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %119
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @SES_ENCSTAT_CRITICAL, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i32, i32* @stdout, align 4
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %138
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @SES_ENCSTAT_NONCRITICAL, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32, i32* @stdout, align 4
  %153 = call i32 (i32, i8*, ...) @fprintf(i32 %152, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %146
  %155 = call i32 @putchar(i8 signext 10)
  %156 = load i32, i32* @SES_ENCSTAT_CRITICAL, align 4
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @SESIOC_SETENCSTAT, align 4
  %159 = ptrtoint i32* %9 to i32
  %160 = call i64 @ioctl(i32 %157, i32 %158, i32 %159)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %154
  %163 = load i32, i32* @stderr, align 4
  %164 = load i8**, i8*** %5, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = load i32, i32* @errno, align 4
  %170 = call i8* @strerror(i32 %169)
  %171 = call i32 (i32, i8*, ...) @fprintf(i32 %163, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %168, i8* %170)
  br label %172

172:                                              ; preds = %162, %154
  %173 = load i32, i32* %6, align 4
  %174 = call i32 @close(i32 %173)
  br label %175

175:                                              ; preds = %172, %116, %80, %62, %49
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %35

178:                                              ; preds = %35
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @sleep(i32 %179)
  br label %34

181:                                              ; preds = %27, %13
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
