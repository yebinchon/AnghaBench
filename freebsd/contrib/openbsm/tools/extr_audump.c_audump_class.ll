; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/tools/extr_audump.c_audump_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/tools/extr_audump.c_audump_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"0x%08x:%s:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @audump_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audump_class() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  br label %2

2:                                                ; preds = %5, %0
  %3 = call %struct.TYPE_3__* (...) @getauclassent()
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %1, align 8
  %4 = icmp ne %struct.TYPE_3__* %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %8, i8* %11, i8* %14)
  br label %2

16:                                               ; preds = %2
  ret void
}

declare dso_local %struct.TYPE_3__* @getauclassent(...) #1

declare dso_local i32 @printf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
