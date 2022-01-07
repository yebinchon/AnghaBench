; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_value_of_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_value_of_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.varobj = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.varobj*, i32)* @value_of_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @value_of_child(%struct.varobj* %0, i32 %1) #0 {
  %3 = alloca %struct.varobj*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.value*, align 8
  store %struct.varobj* %0, %struct.varobj** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.varobj*, %struct.varobj** %3, align 8
  %7 = getelementptr inbounds %struct.varobj, %struct.varobj* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to %struct.value* (%struct.varobj*, i32)**
  %13 = load %struct.value* (%struct.varobj*, i32)*, %struct.value* (%struct.varobj*, i32)** %12, align 8
  %14 = load %struct.varobj*, %struct.varobj** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.value* %13(%struct.varobj* %14, i32 %15)
  store %struct.value* %16, %struct.value** %5, align 8
  %17 = load %struct.value*, %struct.value** %5, align 8
  %18 = icmp ne %struct.value* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.value*, %struct.value** %5, align 8
  %21 = call i64 @VALUE_LAZY(%struct.value* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.value*, %struct.value** %5, align 8
  %25 = call i32 @gdb_value_fetch_lazy(%struct.value* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store %struct.value* null, %struct.value** %5, align 8
  br label %28

28:                                               ; preds = %27, %23
  br label %29

29:                                               ; preds = %28, %19, %2
  %30 = load %struct.value*, %struct.value** %5, align 8
  ret %struct.value* %30
}

declare dso_local i64 @VALUE_LAZY(%struct.value*) #1

declare dso_local i32 @gdb_value_fetch_lazy(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
