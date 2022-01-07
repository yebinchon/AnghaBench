; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_type_of_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_type_of_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.varobj = type { i32, i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.type* (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.varobj*)* @type_of_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @type_of_child(%struct.varobj* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca %struct.varobj*, align 8
  store %struct.varobj* %0, %struct.varobj** %3, align 8
  %4 = load %struct.varobj*, %struct.varobj** %3, align 8
  %5 = getelementptr inbounds %struct.varobj, %struct.varobj* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.varobj*, %struct.varobj** %3, align 8
  %10 = getelementptr inbounds %struct.varobj, %struct.varobj* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = call %struct.type* @VALUE_TYPE(i32* %11)
  store %struct.type* %12, %struct.type** %2, align 8
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.varobj*, %struct.varobj** %3, align 8
  %15 = getelementptr inbounds %struct.varobj, %struct.varobj* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.type* (i32, i32)*, %struct.type* (i32, i32)** %19, align 8
  %21 = load %struct.varobj*, %struct.varobj** %3, align 8
  %22 = getelementptr inbounds %struct.varobj, %struct.varobj* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.varobj*, %struct.varobj** %3, align 8
  %25 = getelementptr inbounds %struct.varobj, %struct.varobj* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.type* %20(i32 %23, i32 %26)
  store %struct.type* %27, %struct.type** %2, align 8
  br label %28

28:                                               ; preds = %13, %8
  %29 = load %struct.type*, %struct.type** %2, align 8
  ret %struct.type* %29
}

declare dso_local %struct.type* @VALUE_TYPE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
