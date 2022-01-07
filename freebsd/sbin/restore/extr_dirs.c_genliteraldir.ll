; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_dirs.c_genliteraldir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_dirs.c_genliteraldir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.inotab = type { i32, i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Cannot find directory inode %ju named %s\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"cannot create file: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@dirp = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"write error extracting inode %ju, name %s\0A\00", align 1
@curfile = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"read: %s\0A\00", align 1
@Nflag = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"write: %s\0A\00", align 1
@GOOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genliteraldir(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.inotab*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i32, i32* @BUFSIZ, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call %struct.inotab* @inotablookup(i64 %18)
  store %struct.inotab* %19, %struct.inotab** %6, align 8
  %20 = load %struct.inotab*, %struct.inotab** %6, align 8
  %21 = icmp eq %struct.inotab* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24, i8* %25)
  br label %27

27:                                               ; preds = %22, %2
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @O_WRONLY, align 4
  %30 = load i32, i32* @O_CREAT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @O_TRUNC, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @open(i8* %28, i32 %33, i32 438)
  store i32 %34, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = load i32, i32* @stderr, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fflush(i32 %40)
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32, i32* @errno, align 4
  %44 = call i8* @strerror(i32 %43)
  %45 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @FAIL, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %119

47:                                               ; preds = %27
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dirp, align 8
  %49 = load %struct.inotab*, %struct.inotab** %6, align 8
  %50 = getelementptr inbounds %struct.inotab, %struct.inotab* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.inotab*, %struct.inotab** %6, align 8
  %53 = getelementptr inbounds %struct.inotab, %struct.inotab* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @rst_seekdir(%struct.TYPE_4__* %48, i32 %51, i32 %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dirp, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dup(i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.inotab*, %struct.inotab** %6, align 8
  %61 = getelementptr inbounds %struct.inotab, %struct.inotab* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %109, %47
  %64 = load i32, i32* %9, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %113

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @BUFSIZ, align 4
  %69 = call i32 @MIN(i32 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @read(i32 %70, i8* %17, i32 %71)
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %87

74:                                               ; preds = %66
  %75 = load i32, i32* @stderr, align 4
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @curfile, i32 0, i32 1), align 8
  %77 = trunc i64 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @curfile, i32 0, i32 0), align 8
  %81 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %79, i32 %80)
  %82 = load i32, i32* @stderr, align 4
  %83 = load i32, i32* @errno, align 4
  %84 = call i8* @strerror(i32 %83)
  %85 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %84)
  %86 = call i32 @done(i32 1)
  br label %87

87:                                               ; preds = %74, %66
  %88 = load i32, i32* @Nflag, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %108, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @write(i32 %91, i8* %17, i32 %92)
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load i32, i32* @stderr, align 4
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @curfile, i32 0, i32 1), align 8
  %98 = trunc i64 %97 to i32
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @curfile, i32 0, i32 0), align 8
  %102 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %100, i32 %101)
  %103 = load i32, i32* @stderr, align 4
  %104 = load i32, i32* @errno, align 4
  %105 = call i8* @strerror(i32 %104)
  %106 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %105)
  %107 = call i32 @done(i32 1)
  br label %108

108:                                              ; preds = %95, %90, %87
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* @BUFSIZ, align 4
  %111 = load i32, i32* %9, align 4
  %112 = sub nsw i32 %111, %110
  store i32 %112, i32* %9, align 4
  br label %63

113:                                              ; preds = %63
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @close(i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @close(i32 %116)
  %118 = load i32, i32* @GOOD, align 4
  store i32 %118, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %119

119:                                              ; preds = %113, %36
  %120 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.inotab* @inotablookup(i64) #2

declare dso_local i32 @panic(i8*, i32, i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @rst_seekdir(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i32 @dup(i32) #2

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @done(i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
