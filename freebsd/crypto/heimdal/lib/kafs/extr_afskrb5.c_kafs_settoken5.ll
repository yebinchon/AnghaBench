; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afskrb5.c_kafs_settoken5.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afskrb5.c_kafs_settoken5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kafs_token = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kafs_settoken5(i32 %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.kafs_token, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @v5_convert(i32 %12, i32* null, i32* %13, i32 %14, i8* %15, %struct.kafs_token* %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %33

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %10, i32 0, i32 2
  %24 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %10, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %10, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kafs_settoken_rxkad(i8* %22, i32* %23, i32 %25, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @free(i32 %30)
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %21, %19
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @v5_convert(i32, i32*, i32*, i32, i8*, %struct.kafs_token*) #1

declare dso_local i32 @kafs_settoken_rxkad(i8*, i32*, i32, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
