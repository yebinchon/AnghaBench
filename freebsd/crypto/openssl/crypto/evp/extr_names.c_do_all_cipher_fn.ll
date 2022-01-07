; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_names.c_do_all_cipher_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_names.c_do_all_cipher_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i64 }
%struct.doall_cipher = type { i32, i32 (i32*, i32, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @do_all_cipher_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_all_cipher_fn(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.doall_cipher*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.doall_cipher*
  store %struct.doall_cipher* %7, %struct.doall_cipher** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.doall_cipher*, %struct.doall_cipher** %5, align 8
  %14 = getelementptr inbounds %struct.doall_cipher, %struct.doall_cipher* %13, i32 0, i32 1
  %15 = load i32 (i32*, i32, i32*, i32)*, i32 (i32*, i32, i32*, i32)** %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.doall_cipher*, %struct.doall_cipher** %5, align 8
  %23 = getelementptr inbounds %struct.doall_cipher, %struct.doall_cipher* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %15(i32* null, i32 %18, i32* %21, i32 %24)
  br label %40

26:                                               ; preds = %2
  %27 = load %struct.doall_cipher*, %struct.doall_cipher** %5, align 8
  %28 = getelementptr inbounds %struct.doall_cipher, %struct.doall_cipher* %27, i32 0, i32 1
  %29 = load i32 (i32*, i32, i32*, i32)*, i32 (i32*, i32, i32*, i32)** %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.doall_cipher*, %struct.doall_cipher** %5, align 8
  %37 = getelementptr inbounds %struct.doall_cipher, %struct.doall_cipher* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %29(i32* %32, i32 %35, i32* null, i32 %38)
  br label %40

40:                                               ; preds = %26, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
