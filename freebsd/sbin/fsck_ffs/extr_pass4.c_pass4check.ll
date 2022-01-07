; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass4.c_pass4check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass4.c_pass4check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dups = type { i64, %struct.dups* }
%struct.inodesc = type { i64, i32 }

@KEEPON = common dso_local global i32 0, align 4
@SKIP = common dso_local global i32 0, align 4
@duplist = common dso_local global %struct.dups* null, align 8
@n_blks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pass4check(%struct.inodesc* %0) #0 {
  %2 = alloca %struct.inodesc*, align 8
  %3 = alloca %struct.dups*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.inodesc* %0, %struct.inodesc** %2, align 8
  %7 = load i32, i32* @KEEPON, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.inodesc*, %struct.inodesc** %2, align 8
  %9 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.inodesc*, %struct.inodesc** %2, align 8
  %12 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %67, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %72

17:                                               ; preds = %14
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @chkrange(i64 %18, i32 1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @SKIP, align 4
  store i32 %22, i32* %5, align 4
  br label %66

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @testbmap(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %23
  %28 = load %struct.dups*, %struct.dups** @duplist, align 8
  store %struct.dups* %28, %struct.dups** %3, align 8
  br label %29

29:                                               ; preds = %52, %27
  %30 = load %struct.dups*, %struct.dups** %3, align 8
  %31 = icmp ne %struct.dups* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %29
  %33 = load %struct.dups*, %struct.dups** %3, align 8
  %34 = getelementptr inbounds %struct.dups, %struct.dups* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %52

39:                                               ; preds = %32
  %40 = load %struct.dups*, %struct.dups** @duplist, align 8
  %41 = getelementptr inbounds %struct.dups, %struct.dups* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.dups*, %struct.dups** %3, align 8
  %44 = getelementptr inbounds %struct.dups, %struct.dups* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.dups*, %struct.dups** @duplist, align 8
  store %struct.dups* %45, %struct.dups** %3, align 8
  %46 = load %struct.dups*, %struct.dups** @duplist, align 8
  %47 = getelementptr inbounds %struct.dups, %struct.dups* %46, i32 0, i32 1
  %48 = load %struct.dups*, %struct.dups** %47, align 8
  store %struct.dups* %48, %struct.dups** @duplist, align 8
  %49 = load %struct.dups*, %struct.dups** %3, align 8
  %50 = bitcast %struct.dups* %49 to i8*
  %51 = call i32 @free(i8* %50)
  br label %56

52:                                               ; preds = %38
  %53 = load %struct.dups*, %struct.dups** %3, align 8
  %54 = getelementptr inbounds %struct.dups, %struct.dups* %53, i32 0, i32 1
  %55 = load %struct.dups*, %struct.dups** %54, align 8
  store %struct.dups* %55, %struct.dups** %3, align 8
  br label %29

56:                                               ; preds = %39, %29
  %57 = load %struct.dups*, %struct.dups** %3, align 8
  %58 = icmp eq %struct.dups* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @clrbmap(i64 %60)
  %62 = load i32, i32* @n_blks, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* @n_blks, align 4
  br label %64

64:                                               ; preds = %59, %56
  br label %65

65:                                               ; preds = %64, %23
  br label %66

66:                                               ; preds = %65, %21
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %6, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %6, align 8
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %4, align 4
  br label %14

72:                                               ; preds = %14
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @chkrange(i64, i32) #1

declare dso_local i64 @testbmap(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @clrbmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
