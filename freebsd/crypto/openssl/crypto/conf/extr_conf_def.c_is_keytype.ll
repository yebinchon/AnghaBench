; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_def.c_is_keytype.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_def.c_is_keytype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@os_toascii = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8, i16)* @is_keytype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_keytype(%struct.TYPE_3__* %0, i8 signext %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i16*, align 8
  %9 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8 %1, i8* %6, align 1
  store i16 %2, i16* %7, align 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i16*
  store i16* %13, i16** %8, align 8
  %14 = load i8, i8* %6, align 1
  store i8 %14, i8* %9, align 1
  %15 = load i8, i8* %9, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp sgt i32 %16, 127
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

19:                                               ; preds = %3
  %20 = load i16*, i16** %8, align 8
  %21 = load i8, i8* %9, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds i16, i16* %20, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = load i16, i16* %7, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %19, %18
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
