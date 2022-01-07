; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getnetnamadr.c_endnetent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getnetnamadr.c_endnetent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netent_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @endnetent() #0 {
  %1 = alloca %struct.netent_data*, align 8
  %2 = call %struct.netent_data* (...) @__netent_data_init()
  store %struct.netent_data* %2, %struct.netent_data** %1, align 8
  %3 = icmp eq %struct.netent_data* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %9

5:                                                ; preds = %0
  %6 = load %struct.netent_data*, %struct.netent_data** %1, align 8
  %7 = call i32 @_endnethtent(%struct.netent_data* %6)
  %8 = call i32 (...) @_endnetdnsent()
  br label %9

9:                                                ; preds = %5, %4
  ret void
}

declare dso_local %struct.netent_data* @__netent_data_init(...) #1

declare dso_local i32 @_endnethtent(%struct.netent_data*) #1

declare dso_local i32 @_endnetdnsent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
