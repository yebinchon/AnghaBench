; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_getpathname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_getpathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inodesc = type { i64, i64, i8*, i32, i32, i32 }

@getpathname.busy = internal global i32 0, align 4
@UFS_ROOTINO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@DATA = common dso_local global i32 0, align 4
@IGNORE = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@findino = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@FOUND = common dso_local global i32 0, align 4
@findname = common dso_local global i32 0, align 4
@UFS_MAXNAMLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getpathname(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.inodesc, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @UFS_ROOTINO, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strcpy(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %129

20:                                               ; preds = %13, %3
  %21 = load i32, i32* @getpathname.busy, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @INO_IS_DVALID(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %20
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strcpy(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %129

30:                                               ; preds = %23
  store i32 1, i32* @getpathname.busy, align 4
  %31 = call i32 @memset(%struct.inodesc* %9, i32 0, i32 40)
  %32 = load i32, i32* @DATA, align 4
  %33 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 5
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* @IGNORE, align 4
  %35 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 4
  store i32 %34, i32* %35, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* @MAXPATHLEN, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  store i8 0, i8* %41, align 1
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %30
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  br label %68

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %107, %48
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @UFS_ROOTINO, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %110

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 1
  store i64 %54, i64* %55, align 8
  %56 = load i32, i32* @findino, align 4
  %57 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 3
  store i32 %56, i32* %57, align 8
  %58 = call i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %59 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 2
  store i8* %58, i8** %59, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @ginode(i64 %60)
  %62 = call i32 @ckinode(i32 %61, %struct.inodesc* %9)
  %63 = load i32, i32* @FOUND, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %110

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %45
  %69 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 1
  store i64 %70, i64* %71, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 0
  store i64 %72, i64* %73, align 8
  %74 = load i32, i32* @findname, align 4
  %75 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 3
  store i32 %74, i32* %75, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 2
  store i8* %76, i8** %77, align 8
  %78 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @ginode(i64 %79)
  %81 = call i32 @ckinode(i32 %80, %struct.inodesc* %9)
  %82 = load i32, i32* @FOUND, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %68
  br label %110

86:                                               ; preds = %68
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @strlen(i8* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = sext i32 %89 to i64
  %92 = sub i64 0, %91
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  store i8* %93, i8** %8, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = call i32 @memmove(i8* %94, i8* %95, i64 %97)
  %99 = load i8*, i8** %8, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 -1
  store i8* %100, i8** %8, align 8
  store i8 47, i8* %100, align 1
  %101 = load i8*, i8** %8, align 8
  %102 = load i8*, i8** %4, align 8
  %103 = load i64, i64* @UFS_MAXNAMLEN, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = icmp ult i8* %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %86
  br label %110

107:                                              ; preds = %86
  %108 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %6, align 8
  br label %49

110:                                              ; preds = %106, %85, %66, %49
  store i32 0, i32* @getpathname.busy, align 4
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* @UFS_ROOTINO, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i8*, i8** %8, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 -1
  store i8* %116, i8** %8, align 8
  store i8 63, i8* %116, align 1
  br label %117

117:                                              ; preds = %114, %110
  %118 = load i8*, i8** %4, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = load i8*, i8** %4, align 8
  %121 = load i32, i32* @MAXPATHLEN, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8*, i8** %8, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = call i32 @memmove(i8* %118, i8* %119, i64 %127)
  br label %129

129:                                              ; preds = %117, %27, %17
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @INO_IS_DVALID(i64) #1

declare dso_local i32 @memset(%struct.inodesc*, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @ckinode(i32, %struct.inodesc*) #1

declare dso_local i32 @ginode(i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
