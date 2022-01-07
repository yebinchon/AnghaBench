; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_ether.c_readether.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_ether.c_readether.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodesc = type { i32 }
%struct.ether_header = type { i32, i32 }

@ETHER_ALIGN = common dso_local global i64 0, align 8
@bcea = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readether(%struct.iodesc* %0, i8** %1, i8** %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iodesc*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ether_header*, align 8
  %14 = alloca i8*, align 8
  store %struct.iodesc* %0, %struct.iodesc** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* null, i8** %14, align 8
  %15 = load %struct.iodesc*, %struct.iodesc** %7, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @netif_get(%struct.iodesc* %15, i8** %14, i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 8
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %5
  %25 = load i8*, i8** %14, align 8
  %26 = call i32 @free(i8* %25)
  store i32 -1, i32* %6, align 4
  br label %69

27:                                               ; preds = %20
  %28 = load i8*, i8** %14, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load i64, i64* @ETHER_ALIGN, align 8
  %31 = add i64 %29, %30
  %32 = inttoptr i64 %31 to %struct.ether_header*
  store %struct.ether_header* %32, %struct.ether_header** %13, align 8
  %33 = load %struct.iodesc*, %struct.iodesc** %7, align 8
  %34 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ether_header*, %struct.ether_header** %13, align 8
  %37 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @bcmp(i32 %35, i32 %38, i32 6)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %27
  %42 = load i32, i32* @bcea, align 4
  %43 = load %struct.ether_header*, %struct.ether_header** %13, align 8
  %44 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @bcmp(i32 %42, i32 %45, i32 6)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 @free(i8* %49)
  store i32 -1, i32* %6, align 4
  br label %69

51:                                               ; preds = %41, %27
  %52 = load i8*, i8** %14, align 8
  %53 = load i8**, i8*** %8, align 8
  store i8* %52, i8** %53, align 8
  %54 = load %struct.ether_header*, %struct.ether_header** %13, align 8
  %55 = ptrtoint %struct.ether_header* %54 to i64
  %56 = add i64 %55, 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load i8**, i8*** %9, align 8
  store i8* %57, i8** %58, align 8
  %59 = load %struct.ether_header*, %struct.ether_header** %13, align 8
  %60 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ntohs(i32 %61)
  %63 = load i32*, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = sub i64 %65, 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %51, %48, %24
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @netif_get(%struct.iodesc*, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @bcmp(i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
