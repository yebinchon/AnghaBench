; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_c_variable_editable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_c_variable_editable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.varobj*)* @c_variable_editable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_variable_editable(%struct.varobj* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.varobj*, align 8
  store %struct.varobj* %0, %struct.varobj** %3, align 8
  %4 = load %struct.varobj*, %struct.varobj** %3, align 8
  %5 = call i32 @get_type(%struct.varobj* %4)
  %6 = call i32 @TYPE_CODE(i32 %5)
  switch i32 %6, label %8 [
    i32 129, label %7
    i32 128, label %7
    i32 133, label %7
    i32 132, label %7
    i32 131, label %7
    i32 130, label %7
  ]

7:                                                ; preds = %1, %1, %1, %1, %1, %1
  store i32 0, i32* %2, align 4
  br label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %9

9:                                                ; preds = %8, %7
  %10 = load i32, i32* %2, align 4
  ret i32 %10
}

declare dso_local i32 @TYPE_CODE(i32) #1

declare dso_local i32 @get_type(%struct.varobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
