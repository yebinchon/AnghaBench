; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_kobj.c_kobj_close_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_kobj.c_kobj_close_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct._buf = type { i32, i64 }

@FREAD = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kobj_close_file(%struct._buf* %0) #0 {
  %2 = alloca %struct._buf*, align 8
  store %struct._buf* %0, %struct._buf** %2, align 8
  %3 = load %struct._buf*, %struct._buf** %2, align 8
  %4 = getelementptr inbounds %struct._buf, %struct._buf* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct._buf*, %struct._buf** %2, align 8
  %9 = getelementptr inbounds %struct._buf, %struct._buf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @FREAD, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %16 = call i32 @vn_close(i32 %10, i32 %11, i32 %14, %struct.TYPE_3__* %15)
  br label %17

17:                                               ; preds = %7, %1
  %18 = load %struct._buf*, %struct._buf** %2, align 8
  %19 = call i32 @kmem_free(%struct._buf* %18, i32 16)
  ret void
}

declare dso_local i32 @vn_close(i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @kmem_free(%struct._buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
