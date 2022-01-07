; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcrypt/extr_crypt.c_crypt_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcrypt/extr_crypt.c_crypt_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_format = type { i32 (i8*, i8*, i8*)*, i32*, i32* }
%struct.TYPE_2__ = type { i32 (i8*, i8*, i8*)* }
%struct.crypt_data = type { i8* }

@crypt_formats = common dso_local global %struct.crypt_format* null, align 8
@crypt_format = common dso_local global %struct.TYPE_2__* null, align 8
@DES_SALT_ALPHABET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @crypt_r(i8* %0, i8* %1, %struct.crypt_data* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.crypt_data*, align 8
  %8 = alloca %struct.crypt_format*, align 8
  %9 = alloca i32 (i8*, i8*, i8*)*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.crypt_data* %2, %struct.crypt_data** %7, align 8
  %10 = load %struct.crypt_format*, %struct.crypt_format** @crypt_formats, align 8
  store %struct.crypt_format* %10, %struct.crypt_format** %8, align 8
  br label %11

11:                                               ; preds = %34, %3
  %12 = load %struct.crypt_format*, %struct.crypt_format** %8, align 8
  %13 = getelementptr inbounds %struct.crypt_format, %struct.crypt_format* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load %struct.crypt_format*, %struct.crypt_format** %8, align 8
  %18 = getelementptr inbounds %struct.crypt_format, %struct.crypt_format* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.crypt_format*, %struct.crypt_format** %8, align 8
  %24 = getelementptr inbounds %struct.crypt_format, %struct.crypt_format* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i8* @strstr(i8* %22, i32* %25)
  %27 = load i8*, i8** %6, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.crypt_format*, %struct.crypt_format** %8, align 8
  %31 = getelementptr inbounds %struct.crypt_format, %struct.crypt_format* %30, i32 0, i32 0
  %32 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %31, align 8
  store i32 (i8*, i8*, i8*)* %32, i32 (i8*, i8*, i8*)** %9, align 8
  br label %41

33:                                               ; preds = %21, %16
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.crypt_format*, %struct.crypt_format** %8, align 8
  %36 = getelementptr inbounds %struct.crypt_format, %struct.crypt_format* %35, i32 1
  store %struct.crypt_format* %36, %struct.crypt_format** %8, align 8
  br label %11

37:                                               ; preds = %11
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @crypt_format, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %39, align 8
  store i32 (i8*, i8*, i8*)* %40, i32 (i8*, i8*, i8*)** %9, align 8
  br label %41

41:                                               ; preds = %37, %29
  %42 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %9, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.crypt_data*, %struct.crypt_data** %7, align 8
  %46 = getelementptr inbounds %struct.crypt_data, %struct.crypt_data* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 %42(i8* %43, i8* %44, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i8* null, i8** %4, align 8
  br label %55

51:                                               ; preds = %41
  %52 = load %struct.crypt_data*, %struct.crypt_data** %7, align 8
  %53 = getelementptr inbounds %struct.crypt_data, %struct.crypt_data* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %4, align 8
  br label %55

55:                                               ; preds = %51, %50
  %56 = load i8*, i8** %4, align 8
  ret i8* %56
}

declare dso_local i8* @strstr(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
