; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_server.c_output_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_server.c_output_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i64, i32, i32* }

@WAITING_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.client*, i8*, i64)* @output_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_data(%struct.client* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.client* %0, %struct.client** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.client*, %struct.client** %4, align 8
  %8 = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = add i64 %9, %10
  %12 = load %struct.client*, %struct.client** %4, align 8
  %13 = getelementptr inbounds %struct.client, %struct.client* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 (...) @abort() #3
  unreachable

18:                                               ; preds = %3
  %19 = load %struct.client*, %struct.client** %4, align 8
  %20 = getelementptr inbounds %struct.client, %struct.client* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.client*, %struct.client** %4, align 8
  %23 = getelementptr inbounds %struct.client, %struct.client* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %24, %25
  %27 = call i32* @erealloc(i32* %21, i64 %26)
  %28 = load %struct.client*, %struct.client** %4, align 8
  %29 = getelementptr inbounds %struct.client, %struct.client* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.client*, %struct.client** %4, align 8
  %31 = getelementptr inbounds %struct.client, %struct.client* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.client*, %struct.client** %4, align 8
  %34 = getelementptr inbounds %struct.client, %struct.client* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @memcpy(i32* %36, i8* %37, i64 %38)
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.client*, %struct.client** %4, align 8
  %42 = getelementptr inbounds %struct.client, %struct.client* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load i32, i32* @WAITING_WRITE, align 4
  %46 = load %struct.client*, %struct.client** %4, align 8
  %47 = getelementptr inbounds %struct.client, %struct.client* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32* @erealloc(i32*, i64) #2

declare dso_local i32 @memcpy(i32*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
