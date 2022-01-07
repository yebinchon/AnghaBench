; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_add_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_add_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@num_ports = common dso_local global i64 0, align 8
@ports = common dso_local global %struct.TYPE_4__* null, align 8
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*)* @add_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_port(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @SOCK_DGRAM, align 4
  store i32 %15, i32* %9, align 4
  br label %24

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %21, i32* %9, align 4
  br label %23

22:                                               ; preds = %16
  br label %88

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %23, %14
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %55, %24
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @num_ports, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ports, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %29
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ports, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ports, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %88

54:                                               ; preds = %45, %37, %29
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %10, align 8
  br label %25

58:                                               ; preds = %25
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ports, align 8
  %60 = load i64, i64* @num_ports, align 8
  %61 = add i64 %60, 1
  %62 = mul i64 %61, 12
  %63 = call %struct.TYPE_4__* @realloc(%struct.TYPE_4__* %59, i64 %62)
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** @ports, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ports, align 8
  %65 = icmp eq %struct.TYPE_4__* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @errno, align 4
  %69 = call i32 @krb5_err(i32 %67, i32 1, i32 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %58
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ports, align 8
  %73 = load i64, i64* @num_ports, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ports, align 8
  %78 = load i64, i64* @num_ports, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ports, align 8
  %83 = load i64, i64* @num_ports, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 4
  %86 = load i64, i64* @num_ports, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* @num_ports, align 8
  br label %88

88:                                               ; preds = %70, %53, %22
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @realloc(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @krb5_err(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
