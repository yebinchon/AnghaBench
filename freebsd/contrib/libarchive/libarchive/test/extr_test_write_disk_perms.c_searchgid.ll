; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_disk_perms.c_searchgid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_disk_perms.c_searchgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@searchgid._searched = internal global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"test_gid\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Couldn't create a file for gid testing.\00", align 1
@_default_gid = common dso_local global i64 0, align 8
@_invalid_gid = common dso_local global i32 0, align 4
@_alt_gid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @searchgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @searchgid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  %5 = alloca i32, align 4
  %6 = call i32 (...) @getuid()
  store i32 %6, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %7 = load i32, i32* @searchgid._searched, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %83

10:                                               ; preds = %0
  store i32 1, i32* @searchgid._searched, align 4
  %11 = load i32, i32* @O_CREAT, align 4
  %12 = load i32, i32* @O_BINARY, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13, i32 436)
  store i32 %14, i32* %5, align 4
  %15 = call i32 @failure(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @fstat(i32 %20, %struct.stat* %4)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* @_default_gid, align 8
  store i32 -1, i32* @_invalid_gid, align 4
  store i32 1, i32* %2, align 4
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %45, %10
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = icmp ult i32 %32, 10000
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i1 [ false, %27 ], [ %33, %31 ]
  br i1 %35, label %36, label %50

36:                                               ; preds = %34
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i64 @fchown(i32 %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %2, align 4
  store i32 %43, i32* @_invalid_gid, align 4
  br label %50

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %2, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %27

50:                                               ; preds = %42, %34
  store i32 -1, i32* @_alt_gid, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %75, %50
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = icmp ult i32 %56, 10000
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi i1 [ false, %51 ], [ %57, %55 ]
  br i1 %59, label %60, label %80

60:                                               ; preds = %58
  %61 = load i32, i32* %2, align 4
  %62 = load i64, i64* @_default_gid, align 8
  %63 = trunc i64 %62 to i32
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %75

66:                                               ; preds = %60
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %1, align 4
  %69 = load i32, i32* %2, align 4
  %70 = call i64 @fchown(i32 %67, i32 %68, i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %2, align 4
  store i32 %73, i32* @_alt_gid, align 4
  br label %80

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %65
  %76 = load i32, i32* %3, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %2, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %2, align 4
  br label %51

80:                                               ; preds = %72, %58
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @close(i32 %81)
  br label %83

83:                                               ; preds = %80, %9
  ret void
}

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @fchown(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
