; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_linkaddr_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_linkaddr_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i8*)* }
%struct.bsnamemem = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"<empty>\00", align 1
@LINKADDR_ETHER = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@LINKADDR_FRELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"linkaddr_string: malloc\00", align 1
@hex = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @linkaddr_string(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.bsnamemem*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %126

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @LINKADDR_ETHER, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i8* @etheraddr_string(%struct.TYPE_7__* %25, i32* %26)
  store i8* %27, i8** %5, align 8
  br label %126

28:                                               ; preds = %20, %16
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @LINKADDR_FRELAY, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i8* @q922_string(%struct.TYPE_7__* %33, i32* %34, i32 %35)
  store i8* %36, i8** %5, align 8
  br label %126

37:                                               ; preds = %28
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call %struct.bsnamemem* @lookup_bytestring(%struct.TYPE_7__* %38, i32* %39, i32 %40)
  store %struct.bsnamemem* %41, %struct.bsnamemem** %12, align 8
  %42 = load %struct.bsnamemem*, %struct.bsnamemem** %12, align 8
  %43 = getelementptr inbounds %struct.bsnamemem, %struct.bsnamemem* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.bsnamemem*, %struct.bsnamemem** %12, align 8
  %48 = getelementptr inbounds %struct.bsnamemem, %struct.bsnamemem* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %5, align 8
  br label %126

50:                                               ; preds = %37
  %51 = load i32, i32* %9, align 4
  %52 = mul i32 %51, 3
  %53 = call i64 @malloc(i32 %52)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %11, align 8
  %55 = load %struct.bsnamemem*, %struct.bsnamemem** %12, align 8
  %56 = getelementptr inbounds %struct.bsnamemem, %struct.bsnamemem* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.bsnamemem*, %struct.bsnamemem** %12, align 8
  %58 = getelementptr inbounds %struct.bsnamemem, %struct.bsnamemem* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %63, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = call i32 %64(%struct.TYPE_7__* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %61, %50
  %68 = load i8**, i8*** @hex, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %68, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = ptrtoint i8* %74 to i8
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %11, align 8
  store i8 %75, i8* %76, align 1
  %78 = load i8**, i8*** @hex, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %7, align 8
  %81 = load i32, i32* %79, align 4
  %82 = and i32 %81, 15
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %78, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = ptrtoint i8* %85 to i8
  %87 = load i8*, i8** %11, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %11, align 8
  store i8 %86, i8* %87, align 1
  %89 = load i32, i32* %9, align 4
  %90 = sub i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %118, %67
  %92 = load i32, i32* %10, align 4
  %93 = icmp ugt i32 %92, 0
  br i1 %93, label %94, label %121

94:                                               ; preds = %91
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %11, align 8
  store i8 58, i8* %95, align 1
  %97 = load i8**, i8*** @hex, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %97, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = ptrtoint i8* %103 to i8
  %105 = load i8*, i8** %11, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %11, align 8
  store i8 %104, i8* %105, align 1
  %107 = load i8**, i8*** @hex, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %7, align 8
  %110 = load i32, i32* %108, align 4
  %111 = and i32 %110, 15
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %107, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = ptrtoint i8* %114 to i8
  %116 = load i8*, i8** %11, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %11, align 8
  store i8 %115, i8* %116, align 1
  br label %118

118:                                              ; preds = %94
  %119 = load i32, i32* %10, align 4
  %120 = add i32 %119, -1
  store i32 %120, i32* %10, align 4
  br label %91

121:                                              ; preds = %91
  %122 = load i8*, i8** %11, align 8
  store i8 0, i8* %122, align 1
  %123 = load %struct.bsnamemem*, %struct.bsnamemem** %12, align 8
  %124 = getelementptr inbounds %struct.bsnamemem, %struct.bsnamemem* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %5, align 8
  br label %126

126:                                              ; preds = %121, %46, %32, %24, %15
  %127 = load i8*, i8** %5, align 8
  ret i8* %127
}

declare dso_local i8* @etheraddr_string(%struct.TYPE_7__*, i32*) #1

declare dso_local i8* @q922_string(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local %struct.bsnamemem* @lookup_bytestring(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
