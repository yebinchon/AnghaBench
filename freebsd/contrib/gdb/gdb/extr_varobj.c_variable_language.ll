; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_variable_language.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_variable_language.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@vlang_c = common dso_local global i32 0, align 4
@vlang_cplus = common dso_local global i32 0, align 4
@vlang_java = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.varobj*)* @variable_language to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @variable_language(%struct.varobj* %0) #0 {
  %2 = alloca %struct.varobj*, align 8
  %3 = alloca i32, align 4
  store %struct.varobj* %0, %struct.varobj** %2, align 8
  %4 = load %struct.varobj*, %struct.varobj** %2, align 8
  %5 = getelementptr inbounds %struct.varobj, %struct.varobj* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %13 [
    i32 130, label %14
    i32 129, label %16
    i32 128, label %18
  ]

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %1, %13
  %15 = load i32, i32* @vlang_c, align 4
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @vlang_cplus, align 4
  store i32 %17, i32* %3, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @vlang_java, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %18, %16, %14
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
