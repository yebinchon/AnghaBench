; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_scanner.c_lex_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_scanner.c_lex_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FILE_INFO = type { i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.FILE_INFO* (i8*, i8*)* @lex_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.FILE_INFO* @lex_open(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.FILE_INFO*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strlen(i8* %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = add i64 24, %9
  %11 = trunc i64 %10 to i32
  %12 = call %struct.FILE_INFO* @emalloc_zero(i32 %11)
  store %struct.FILE_INFO* %12, %struct.FILE_INFO** %5, align 8
  %13 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %14 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load i32, i32* @EOF, align 4
  %17 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %18 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %20 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @memcpy(i32 %21, i8* %22, i64 %23)
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* null, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %2
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32* @fopen(i8* %28, i8* %29)
  %31 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %32 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %34 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* null, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %39 = call i32 @free(%struct.FILE_INFO* %38)
  store %struct.FILE_INFO* null, %struct.FILE_INFO** %5, align 8
  br label %40

40:                                               ; preds = %37, %27
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  ret %struct.FILE_INFO* %42
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.FILE_INFO* @emalloc_zero(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @free(%struct.FILE_INFO*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
