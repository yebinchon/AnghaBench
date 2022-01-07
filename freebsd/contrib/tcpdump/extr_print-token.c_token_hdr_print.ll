; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-token.c_token_hdr_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-token.c_token_hdr_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.token_header = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%02x %02x \00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s > %s, length %u: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.token_header*, i32, i32*, i32*)* @token_hdr_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @token_hdr_print(%struct.TYPE_5__* %0, %struct.token_header* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.token_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.token_header* %1, %struct.token_header** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i8* @etheraddr_string(%struct.TYPE_5__* %13, i32* %14)
  store i8* %15, i8** %11, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i8* @etheraddr_string(%struct.TYPE_5__* %16, i32* %17)
  store i8* %18, i8** %12, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %5
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = load %struct.token_header*, %struct.token_header** %7, align 8
  %26 = getelementptr inbounds %struct.token_header, %struct.token_header* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.token_header*, %struct.token_header** %7, align 8
  %29 = getelementptr inbounds %struct.token_header, %struct.token_header* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct.TYPE_5__*
  %33 = call i32 @ND_PRINT(%struct.TYPE_5__* %32)
  br label %34

34:                                               ; preds = %23, %5
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %struct.TYPE_5__*
  %41 = call i32 @ND_PRINT(%struct.TYPE_5__* %40)
  ret void
}

declare dso_local i8* @etheraddr_string(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
