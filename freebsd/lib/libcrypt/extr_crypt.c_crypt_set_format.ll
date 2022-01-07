; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcrypt/extr_crypt.c_crypt_set_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcrypt/extr_crypt.c_crypt_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_format = type { i32* }

@crypt_formats = common dso_local global %struct.crypt_format* null, align 8
@crypt_format = common dso_local global %struct.crypt_format* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypt_set_format(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.crypt_format*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.crypt_format*, %struct.crypt_format** @crypt_formats, align 8
  store %struct.crypt_format* %5, %struct.crypt_format** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.crypt_format*, %struct.crypt_format** %4, align 8
  %8 = getelementptr inbounds %struct.crypt_format, %struct.crypt_format* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = load %struct.crypt_format*, %struct.crypt_format** %4, align 8
  %13 = getelementptr inbounds %struct.crypt_format, %struct.crypt_format* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strcasecmp(i32* %14, i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load %struct.crypt_format*, %struct.crypt_format** %4, align 8
  store %struct.crypt_format* %19, %struct.crypt_format** @crypt_format, align 8
  store i32 1, i32* %2, align 4
  br label %25

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.crypt_format*, %struct.crypt_format** %4, align 8
  %23 = getelementptr inbounds %struct.crypt_format, %struct.crypt_format* %22, i32 1
  store %struct.crypt_format* %23, %struct.crypt_format** %4, align 8
  br label %6

24:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @strcasecmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
