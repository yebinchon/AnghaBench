; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_lookup_transparent_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_lookup_transparent_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.type* (i8*)* }
%struct.type = type { i32 }

@current_language = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @lookup_transparent_type(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load %struct.type* (i8*)*, %struct.type* (i8*)** %4, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call %struct.type* %5(i8* %6)
  ret %struct.type* %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
