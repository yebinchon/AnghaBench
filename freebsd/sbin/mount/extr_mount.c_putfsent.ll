; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount.c_putfsent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount.c_putfsent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32, i8*, i8*, i8* }
%struct.fstab = type { i32, i32 }

@MNT_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"<below>\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"<above>\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"\09%u %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ufs\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"\091 1\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"\092 2\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"\090 0\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putfsent(%struct.statfs* %0) #0 {
  %2 = alloca %struct.statfs*, align 8
  %3 = alloca %struct.fstab*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.statfs* %0, %struct.statfs** %2, align 8
  store i8* null, i8** %4, align 8
  %7 = load %struct.statfs*, %struct.statfs** %2, align 8
  %8 = getelementptr inbounds %struct.statfs, %struct.statfs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MNT_RDONLY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8* null, i8** %5, align 8
  br label %16

14:                                               ; preds = %1
  %15 = call i8* @catopt(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %5, align 8
  br label %16

16:                                               ; preds = %14, %13
  %17 = load %struct.statfs*, %struct.statfs** %2, align 8
  %18 = getelementptr inbounds %struct.statfs, %struct.statfs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @flags2opts(i32 %19)
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @catopt(i8* %21, i8* %22)
  store i8* %23, i8** %4, align 8
  %24 = load %struct.statfs*, %struct.statfs** %2, align 8
  %25 = getelementptr inbounds %struct.statfs, %struct.statfs* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strncmp(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %16
  %30 = load %struct.statfs*, %struct.statfs** %2, align 8
  %31 = getelementptr inbounds %struct.statfs, %struct.statfs* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strncmp(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %29, %16
  %36 = load %struct.statfs*, %struct.statfs** %2, align 8
  %37 = getelementptr inbounds %struct.statfs, %struct.statfs* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.statfs*, %struct.statfs** %2, align 8
  %40 = getelementptr inbounds %struct.statfs, %struct.statfs* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strnstr(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %43 = add nsw i64 %42, 1
  %44 = call i32 @strlcpy(i8* %38, i64 %43, i32 8)
  br label %45

45:                                               ; preds = %35, %29
  %46 = load %struct.statfs*, %struct.statfs** %2, align 8
  %47 = getelementptr inbounds %struct.statfs, %struct.statfs* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strlen(i8* %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.statfs*, %struct.statfs** %2, align 8
  %51 = getelementptr inbounds %struct.statfs, %struct.statfs* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 8
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 16
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 24
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %52, i8* %56, i8* %60, i8* %64)
  %66 = load %struct.statfs*, %struct.statfs** %2, align 8
  %67 = getelementptr inbounds %struct.statfs, %struct.statfs* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @strlen(i8* %68)
  store i32 %69, i32* %6, align 4
  %70 = load %struct.statfs*, %struct.statfs** %2, align 8
  %71 = getelementptr inbounds %struct.statfs, %struct.statfs* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 8
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 16
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 24
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %72, i8* %76, i8* %80, i8* %84)
  %86 = load %struct.statfs*, %struct.statfs** %2, align 8
  %87 = getelementptr inbounds %struct.statfs, %struct.statfs* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %88)
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @strlen(i8* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i8*, i8** %4, align 8
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 8
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %92, i8* %96)
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load %struct.statfs*, %struct.statfs** %2, align 8
  %101 = getelementptr inbounds %struct.statfs, %struct.statfs* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call %struct.fstab* @getfsspec(i8* %102)
  store %struct.fstab* %103, %struct.fstab** %3, align 8
  %104 = icmp ne %struct.fstab* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %45
  %106 = load %struct.fstab*, %struct.fstab** %3, align 8
  %107 = getelementptr inbounds %struct.fstab, %struct.fstab* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fstab*, %struct.fstab** %3, align 8
  %110 = getelementptr inbounds %struct.fstab, %struct.fstab* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %108, i32 %111)
  br label %148

113:                                              ; preds = %45
  %114 = load %struct.statfs*, %struct.statfs** %2, align 8
  %115 = getelementptr inbounds %struct.statfs, %struct.statfs* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call %struct.fstab* @getfsfile(i8* %116)
  store %struct.fstab* %117, %struct.fstab** %3, align 8
  %118 = icmp ne %struct.fstab* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %113
  %120 = load %struct.fstab*, %struct.fstab** %3, align 8
  %121 = getelementptr inbounds %struct.fstab, %struct.fstab* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.fstab*, %struct.fstab** %3, align 8
  %124 = getelementptr inbounds %struct.fstab, %struct.fstab* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %122, i32 %125)
  br label %147

127:                                              ; preds = %113
  %128 = load %struct.statfs*, %struct.statfs** %2, align 8
  %129 = getelementptr inbounds %struct.statfs, %struct.statfs* %128, i32 0, i32 3
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %127
  %134 = load %struct.statfs*, %struct.statfs** %2, align 8
  %135 = getelementptr inbounds %struct.statfs, %struct.statfs* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @strcmp(i8* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  br label %143

141:                                              ; preds = %133
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %139
  br label %146

144:                                              ; preds = %127
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %143
  br label %147

147:                                              ; preds = %146, %119
  br label %148

148:                                              ; preds = %147, %105
  ret void
}

declare dso_local i8* @catopt(i8*, i8*) #1

declare dso_local i8* @flags2opts(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i64, i32) #1

declare dso_local i64 @strnstr(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.fstab* @getfsspec(i8*) #1

declare dso_local %struct.fstab* @getfsfile(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
