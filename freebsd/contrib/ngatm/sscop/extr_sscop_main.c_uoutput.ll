; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ngatm/sscop/extr_sscop_main.c_uoutput.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ngatm/sscop/extr_sscop_main.c_uoutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sscop = type { i32 }
%struct.uni_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sscop*, %struct.uni_msg*)* @uoutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uoutput(%struct.sscop* %0, %struct.uni_msg* %1) #0 {
  %3 = alloca %struct.sscop*, align 8
  %4 = alloca %struct.uni_msg*, align 8
  store %struct.sscop* %0, %struct.sscop** %3, align 8
  store %struct.uni_msg* %1, %struct.uni_msg** %4, align 8
  %5 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %6 = call i32 @user_msgout(%struct.uni_msg* %5)
  %7 = load %struct.sscop*, %struct.sscop** %3, align 8
  %8 = call i32 @sscop_window(%struct.sscop* %7, i32 1)
  ret void
}

declare dso_local i32 @user_msgout(%struct.uni_msg*) #1

declare dso_local i32 @sscop_window(%struct.sscop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
