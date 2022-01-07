; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_serv.c_mad_receive_via.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_serv.c_mad_receive_via.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmad_port = type { i32 }

@IB_MAD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"recv failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mad_receive_via(i8* %0, i32 %1, %struct.ibmad_port* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ibmad_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ibmad_port* %2, %struct.ibmad_port** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  br label %21

15:                                               ; preds = %3
  %16 = call i64 (...) @umad_size()
  %17 = load i32, i32* @IB_MAD_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = call i8* @umad_alloc(i32 1, i64 %19)
  br label %21

21:                                               ; preds = %15, %13
  %22 = phi i8* [ %14, %13 ], [ %20, %15 ]
  store i8* %22, i8** %8, align 8
  %23 = load i32, i32* @IB_MAD_SIZE, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.ibmad_port*, %struct.ibmad_port** %7, align 8
  %25 = getelementptr inbounds %struct.ibmad_port, %struct.ibmad_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.ibmad_port*, %struct.ibmad_port** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @mad_get_timeout(%struct.ibmad_port* %28, i32 %29)
  %31 = call i32 @umad_recv(i32 %26, i8* %27, i32* %10, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %21
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @umad_free(i8* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @strerror(i32 %40)
  %42 = call i32 @DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i8* null, i8** %4, align 8
  br label %45

43:                                               ; preds = %21
  %44 = load i8*, i8** %8, align 8
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

declare dso_local i8* @umad_alloc(i32, i64) #1

declare dso_local i64 @umad_size(...) #1

declare dso_local i32 @umad_recv(i32, i8*, i32*, i32) #1

declare dso_local i32 @mad_get_timeout(%struct.ibmad_port*, i32) #1

declare dso_local i32 @umad_free(i8*) #1

declare dso_local i32 @DEBUG(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
