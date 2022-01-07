; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lwres.c_lwres_printaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lwres.c_lwres_printaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %u/\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @lwres_printaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lwres_printaddr(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ND_TCHECK(i32 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = call i32 @EXTRACT_16BITS(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = bitcast i32* %17 to i8*
  %19 = getelementptr inbounds i8, i8* %18, i64 4
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ND_TCHECK2(i8 signext %21, i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @EXTRACT_32BITS(i32* %25)
  switch i32 %26, label %55 [
    i32 1, label %27
    i32 2, label %41
  ]

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %88

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @ipaddr_string(i32* %33, i8* %34)
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  %38 = call i32 @ND_PRINT(i32* %37)
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 4
  store i8* %40, i8** %7, align 8
  br label %79

41:                                               ; preds = %2
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 16
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %88

45:                                               ; preds = %41
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @ip6addr_string(i32* %47, i8* %48)
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i32*
  %52 = call i32 @ND_PRINT(i32* %51)
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 4
  store i8* %54, i8** %7, align 8
  br label %79

55:                                               ; preds = %2
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @EXTRACT_32BITS(i32* %58)
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i32*
  %62 = call i32 @ND_PRINT(i32* %61)
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %75, %55
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load i32*, i32** %4, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %7, align 8
  %71 = load i8, i8* %69, align 1
  %72 = sext i8 %71 to i64
  %73 = inttoptr i64 %72 to i32*
  %74 = call i32 @ND_PRINT(i32* %73)
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %63

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78, %45, %31
  %80 = load i8*, i8** %7, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = bitcast %struct.TYPE_3__* %81 to i8*
  %83 = ptrtoint i8* %80 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %3, align 4
  br label %88

87:                                               ; No predecessors!
  store i32 -1, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %79, %44, %30
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_TCHECK2(i8 signext, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ipaddr_string(i32*, i8*) #1

declare dso_local i32 @ip6addr_string(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
