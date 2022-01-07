; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_cppush.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_cppush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpstack = type { i8*, %struct.cpstack* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpstack**, i8*)* @cppush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cppush(%struct.cpstack** %0, i8* %1) #0 {
  %3 = alloca %struct.cpstack**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cpstack*, align 8
  store %struct.cpstack** %0, %struct.cpstack*** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i64 @xmalloc(i32 16)
  %7 = inttoptr i64 %6 to %struct.cpstack*
  store %struct.cpstack* %7, %struct.cpstack** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.cpstack*, %struct.cpstack** %5, align 8
  %10 = getelementptr inbounds %struct.cpstack, %struct.cpstack* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load %struct.cpstack**, %struct.cpstack*** %3, align 8
  %12 = load %struct.cpstack*, %struct.cpstack** %11, align 8
  %13 = load %struct.cpstack*, %struct.cpstack** %5, align 8
  %14 = getelementptr inbounds %struct.cpstack, %struct.cpstack* %13, i32 0, i32 1
  store %struct.cpstack* %12, %struct.cpstack** %14, align 8
  %15 = load %struct.cpstack*, %struct.cpstack** %5, align 8
  %16 = load %struct.cpstack**, %struct.cpstack*** %3, align 8
  store %struct.cpstack* %15, %struct.cpstack** %16, align 8
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
