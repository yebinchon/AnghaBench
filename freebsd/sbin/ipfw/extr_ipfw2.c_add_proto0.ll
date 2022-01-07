; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_add_proto0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_add_proto0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent = type { i32 }

@O_PROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @add_proto0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_proto0(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.protoent*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strtol(i8* %11, i8** %9, i32 10)
  store i32 %12, i32* %10, align 4
  %13 = load i8*, i8** %9, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17, %3
  %21 = load i8*, i8** %6, align 8
  %22 = call %struct.protoent* @getprotobyname(i8* %21)
  store %struct.protoent* %22, %struct.protoent** %8, align 8
  %23 = icmp eq %struct.protoent* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32* null, i32** %4, align 8
  br label %37

25:                                               ; preds = %20
  %26 = load %struct.protoent*, %struct.protoent** %8, align 8
  %27 = getelementptr inbounds %struct.protoent, %struct.protoent* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %25, %17
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @O_PROTO, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @fill_cmd(i32* %30, i32 %31, i32 0, i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %5, align 8
  store i32* %36, i32** %4, align 8
  br label %37

37:                                               ; preds = %29, %24
  %38 = load i32*, i32** %4, align 8
  ret i32* %38
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.protoent* @getprotobyname(i8*) #1

declare dso_local i32 @fill_cmd(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
