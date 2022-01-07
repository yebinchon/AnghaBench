; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getservent.c_getservbyport.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getservent.c_getservbyport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i32 }
%struct.key = type { i32, i8* }

@wrap_getservbyport_r = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.servent* @getservbyport(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.key, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 0
  store i32 %6, i32* %7, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 1
  store i8* %8, i8** %9, align 8
  %10 = load i32, i32* @wrap_getservbyport_r, align 4
  %11 = bitcast %struct.key* %5 to { i32, i8* }*
  %12 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %11, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = call %struct.servent* @getserv(i32 %10, i32 %13, i8* %15)
  ret %struct.servent* %16
}

declare dso_local %struct.servent* @getserv(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
