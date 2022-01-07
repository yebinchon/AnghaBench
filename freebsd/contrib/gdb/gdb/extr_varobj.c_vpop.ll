; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_vpop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_vpop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32 }
%struct.vstack = type { %struct.vstack*, %struct.varobj* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.varobj* (%struct.vstack**)* @vpop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.varobj* @vpop(%struct.vstack** %0) #0 {
  %2 = alloca %struct.varobj*, align 8
  %3 = alloca %struct.vstack**, align 8
  %4 = alloca %struct.vstack*, align 8
  %5 = alloca %struct.varobj*, align 8
  store %struct.vstack** %0, %struct.vstack*** %3, align 8
  %6 = load %struct.vstack**, %struct.vstack*** %3, align 8
  %7 = load %struct.vstack*, %struct.vstack** %6, align 8
  %8 = getelementptr inbounds %struct.vstack, %struct.vstack* %7, i32 0, i32 1
  %9 = load %struct.varobj*, %struct.varobj** %8, align 8
  %10 = icmp eq %struct.varobj* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.vstack**, %struct.vstack*** %3, align 8
  %13 = load %struct.vstack*, %struct.vstack** %12, align 8
  %14 = getelementptr inbounds %struct.vstack, %struct.vstack* %13, i32 0, i32 0
  %15 = load %struct.vstack*, %struct.vstack** %14, align 8
  %16 = icmp eq %struct.vstack* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store %struct.varobj* null, %struct.varobj** %2, align 8
  br label %32

18:                                               ; preds = %11, %1
  %19 = load %struct.vstack**, %struct.vstack*** %3, align 8
  %20 = load %struct.vstack*, %struct.vstack** %19, align 8
  store %struct.vstack* %20, %struct.vstack** %4, align 8
  %21 = load %struct.vstack*, %struct.vstack** %4, align 8
  %22 = getelementptr inbounds %struct.vstack, %struct.vstack* %21, i32 0, i32 1
  %23 = load %struct.varobj*, %struct.varobj** %22, align 8
  store %struct.varobj* %23, %struct.varobj** %5, align 8
  %24 = load %struct.vstack**, %struct.vstack*** %3, align 8
  %25 = load %struct.vstack*, %struct.vstack** %24, align 8
  %26 = getelementptr inbounds %struct.vstack, %struct.vstack* %25, i32 0, i32 0
  %27 = load %struct.vstack*, %struct.vstack** %26, align 8
  %28 = load %struct.vstack**, %struct.vstack*** %3, align 8
  store %struct.vstack* %27, %struct.vstack** %28, align 8
  %29 = load %struct.vstack*, %struct.vstack** %4, align 8
  %30 = call i32 @xfree(%struct.vstack* %29)
  %31 = load %struct.varobj*, %struct.varobj** %5, align 8
  store %struct.varobj* %31, %struct.varobj** %2, align 8
  br label %32

32:                                               ; preds = %18, %17
  %33 = load %struct.varobj*, %struct.varobj** %2, align 8
  ret %struct.varobj* %33
}

declare dso_local i32 @xfree(%struct.vstack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
