; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_util.c_archive_copy_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_util.c_archive_copy_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_copy_error(%struct.archive* %0, %struct.archive* %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  store %struct.archive* %1, %struct.archive** %4, align 8
  %5 = load %struct.archive*, %struct.archive** %4, align 8
  %6 = getelementptr inbounds %struct.archive, %struct.archive* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = getelementptr inbounds %struct.archive, %struct.archive* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.archive*, %struct.archive** %3, align 8
  %11 = getelementptr inbounds %struct.archive, %struct.archive* %10, i32 0, i32 0
  %12 = load %struct.archive*, %struct.archive** %4, align 8
  %13 = getelementptr inbounds %struct.archive, %struct.archive* %12, i32 0, i32 0
  %14 = call i32 @archive_string_copy(%struct.TYPE_3__* %11, %struct.TYPE_3__* %13)
  %15 = load %struct.archive*, %struct.archive** %3, align 8
  %16 = getelementptr inbounds %struct.archive, %struct.archive* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.archive*, %struct.archive** %3, align 8
  %20 = getelementptr inbounds %struct.archive, %struct.archive* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local i32 @archive_string_copy(%struct.TYPE_3__*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
