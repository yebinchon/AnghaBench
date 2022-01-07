; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_print_sattr3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_print_sattr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsv3_sattr = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i64, i32, i64, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c" mode %o\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" uid %u\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" gid %u\00", align 1
@NFSV3SATTRTIME_TOCLIENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c" atime %u.%06u\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c" mtime %u.%06u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.nfsv3_sattr*, i32)* @print_sattr3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sattr3(i32* %0, %struct.nfsv3_sattr* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfsv3_sattr*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.nfsv3_sattr* %1, %struct.nfsv3_sattr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %5, align 8
  %8 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %7, i32 0, i32 9
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %5, align 8
  %14 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i32*
  %18 = call i32 @ND_PRINT(i32* %17)
  br label %19

19:                                               ; preds = %11, %3
  %20 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %5, align 8
  %21 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %5, align 8
  %27 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  %31 = call i32 @ND_PRINT(i32* %30)
  br label %32

32:                                               ; preds = %24, %19
  %33 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %5, align 8
  %34 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %5, align 8
  %40 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 @ND_PRINT(i32* %43)
  br label %45

45:                                               ; preds = %37, %32
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %87

48:                                               ; preds = %45
  %49 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %5, align 8
  %50 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NFSV3SATTRTIME_TOCLIENT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %48
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %5, align 8
  %57 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %5, align 8
  %61 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i32*
  %66 = call i32 @ND_PRINT(i32* %65)
  br label %67

67:                                               ; preds = %54, %48
  %68 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %5, align 8
  %69 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NFSV3SATTRTIME_TOCLIENT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %5, align 8
  %76 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %5, align 8
  %80 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i32*
  %85 = call i32 @ND_PRINT(i32* %84)
  br label %86

86:                                               ; preds = %73, %67
  br label %87

87:                                               ; preds = %86, %45
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
