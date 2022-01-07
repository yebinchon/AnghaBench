; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_server.c_handle_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_server.c_handle_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i64, i32, i32*, i32 }

@WAITING_CLOSE = common dso_local global i32 0, align 4
@WAITING_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.client*)* @handle_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_write(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  %3 = alloca i64, align 8
  store %struct.client* %0, %struct.client** %2, align 8
  %4 = load %struct.client*, %struct.client** %2, align 8
  %5 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.client*, %struct.client** %2, align 8
  %8 = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = load %struct.client*, %struct.client** %2, align 8
  %11 = getelementptr inbounds %struct.client, %struct.client* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @write(i32 %6, i32* %9, i64 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ule i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load i32, i32* @WAITING_CLOSE, align 4
  %18 = load %struct.client*, %struct.client** %2, align 8
  %19 = getelementptr inbounds %struct.client, %struct.client* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* @WAITING_WRITE, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.client*, %struct.client** %2, align 8
  %25 = getelementptr inbounds %struct.client, %struct.client* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %71

28:                                               ; preds = %1
  %29 = load %struct.client*, %struct.client** %2, align 8
  %30 = getelementptr inbounds %struct.client, %struct.client* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %28
  %35 = load %struct.client*, %struct.client** %2, align 8
  %36 = getelementptr inbounds %struct.client, %struct.client* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load %struct.client*, %struct.client** %2, align 8
  %40 = getelementptr inbounds %struct.client, %struct.client* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load %struct.client*, %struct.client** %2, align 8
  %45 = getelementptr inbounds %struct.client, %struct.client* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = sub i64 %46, %47
  %49 = call i32 @memmove(i32* %38, i32* %43, i64 %48)
  %50 = load i64, i64* %3, align 8
  %51 = load %struct.client*, %struct.client** %2, align 8
  %52 = getelementptr inbounds %struct.client, %struct.client* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %53, %50
  store i64 %54, i64* %52, align 8
  br label %70

55:                                               ; preds = %28
  %56 = load %struct.client*, %struct.client** %2, align 8
  %57 = getelementptr inbounds %struct.client, %struct.client* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.client*, %struct.client** %2, align 8
  %59 = getelementptr inbounds %struct.client, %struct.client* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @free(i32* %60)
  %62 = load %struct.client*, %struct.client** %2, align 8
  %63 = getelementptr inbounds %struct.client, %struct.client* %62, i32 0, i32 2
  store i32* null, i32** %63, align 8
  %64 = load i32, i32* @WAITING_WRITE, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.client*, %struct.client** %2, align 8
  %67 = getelementptr inbounds %struct.client, %struct.client* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %55, %34
  br label %71

71:                                               ; preds = %70, %16
  ret void
}

declare dso_local i64 @write(i32, i32*, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
