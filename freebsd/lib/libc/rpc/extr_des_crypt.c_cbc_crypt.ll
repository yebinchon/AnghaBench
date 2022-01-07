; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_des_crypt.c_cbc_crypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_des_crypt.c_cbc_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.desparams = type { i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@CBC = common dso_local global i32 0, align 4
@ECB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cbc_crypt(i8* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.desparams, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load i32, i32* @CBC, align 4
  %14 = getelementptr inbounds %struct.desparams, %struct.desparams* %12, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = getelementptr inbounds %struct.desparams, %struct.desparams* %12, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @COPY8(i8* %15, i8* %17)
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @common_crypt(i8* %19, i8* %20, i32 %21, i32 %22, %struct.desparams* %12)
  store i32 %23, i32* %11, align 4
  %24 = getelementptr inbounds %struct.desparams, %struct.desparams* %12, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @COPY8(i8* %25, i8* %26)
  %28 = load i32, i32* %11, align 4
  ret i32 %28
}

declare dso_local i32 @COPY8(i8*, i8*) #1

declare dso_local i32 @common_crypt(i8*, i8*, i32, i32, %struct.desparams*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
