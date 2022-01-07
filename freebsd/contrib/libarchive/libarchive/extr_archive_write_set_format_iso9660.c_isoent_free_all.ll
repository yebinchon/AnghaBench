; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_free_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isoent = type { %struct.isoent*, %struct.isoent*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.isoent* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isoent*)* @isoent_free_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isoent_free_all(%struct.isoent* %0) #0 {
  %2 = alloca %struct.isoent*, align 8
  %3 = alloca %struct.isoent*, align 8
  %4 = alloca %struct.isoent*, align 8
  store %struct.isoent* %0, %struct.isoent** %2, align 8
  %5 = load %struct.isoent*, %struct.isoent** %2, align 8
  %6 = icmp eq %struct.isoent* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %53

8:                                                ; preds = %1
  %9 = load %struct.isoent*, %struct.isoent** %2, align 8
  store %struct.isoent* %9, %struct.isoent** %3, align 8
  br label %10

10:                                               ; preds = %52, %21, %8
  %11 = load %struct.isoent*, %struct.isoent** %3, align 8
  %12 = getelementptr inbounds %struct.isoent, %struct.isoent* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load %struct.isoent*, %struct.isoent** %3, align 8
  %17 = getelementptr inbounds %struct.isoent, %struct.isoent* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.isoent*, %struct.isoent** %18, align 8
  %20 = icmp ne %struct.isoent* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.isoent*, %struct.isoent** %3, align 8
  %23 = getelementptr inbounds %struct.isoent, %struct.isoent* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.isoent*, %struct.isoent** %24, align 8
  store %struct.isoent* %25, %struct.isoent** %3, align 8
  br label %10

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %10
  br label %28

28:                                               ; preds = %51, %27
  %29 = load %struct.isoent*, %struct.isoent** %3, align 8
  store %struct.isoent* %29, %struct.isoent** %4, align 8
  %30 = load %struct.isoent*, %struct.isoent** %3, align 8
  %31 = getelementptr inbounds %struct.isoent, %struct.isoent* %30, i32 0, i32 0
  %32 = load %struct.isoent*, %struct.isoent** %31, align 8
  %33 = icmp eq %struct.isoent* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load %struct.isoent*, %struct.isoent** %3, align 8
  %36 = getelementptr inbounds %struct.isoent, %struct.isoent* %35, i32 0, i32 1
  %37 = load %struct.isoent*, %struct.isoent** %36, align 8
  store %struct.isoent* %37, %struct.isoent** %3, align 8
  %38 = load %struct.isoent*, %struct.isoent** %4, align 8
  %39 = call i32 @_isoent_free(%struct.isoent* %38)
  %40 = load %struct.isoent*, %struct.isoent** %3, align 8
  %41 = load %struct.isoent*, %struct.isoent** %4, align 8
  %42 = icmp eq %struct.isoent* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %53

44:                                               ; preds = %34
  br label %51

45:                                               ; preds = %28
  %46 = load %struct.isoent*, %struct.isoent** %3, align 8
  %47 = getelementptr inbounds %struct.isoent, %struct.isoent* %46, i32 0, i32 0
  %48 = load %struct.isoent*, %struct.isoent** %47, align 8
  store %struct.isoent* %48, %struct.isoent** %3, align 8
  %49 = load %struct.isoent*, %struct.isoent** %4, align 8
  %50 = call i32 @_isoent_free(%struct.isoent* %49)
  br label %52

51:                                               ; preds = %44
  br label %28

52:                                               ; preds = %45
  br label %10

53:                                               ; preds = %43, %7
  ret void
}

declare dso_local i32 @_isoent_free(%struct.isoent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
