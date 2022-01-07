; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_send.c___res_queriesmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_send.c___res_queriesmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@HFIXEDSZ = common dso_local global i32 0, align 4
@ns_o_update = common dso_local global i64 0, align 8
@MAXDNAME = common dso_local global i32 0, align 4
@INT16SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @res_queriesmatch(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @HFIXEDSZ, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = bitcast i32* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ntohs(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @HFIXEDSZ, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ugt i32* %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @HFIXEDSZ, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ugt i32* %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %4
  store i32 -1, i32* %5, align 4
  br label %123

41:                                               ; preds = %33
  %42 = load i32*, i32** %6, align 8
  %43 = bitcast i32* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ns_o_update, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load i32*, i32** %8, align 8
  %50 = bitcast i32* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ns_o_update, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  br label %123

56:                                               ; preds = %48, %41
  %57 = load i32, i32* %11, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = bitcast i32* %58 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ntohs(i32 %61)
  %63 = icmp ne i32 %57, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %123

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %121, %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %11, align 4
  %69 = icmp sgt i32 %67, 0
  br i1 %69, label %70, label %122

70:                                               ; preds = %66
  %71 = load i32, i32* @MAXDNAME, align 4
  %72 = add nsw i32 %71, 1
  %73 = zext i32 %72 to i64
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %12, align 8
  %75 = alloca i8, i64 %73, align 16
  store i64 %73, i64* %13, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = trunc i64 %73 to i32
  %80 = call i32 @dn_expand(i32* %76, i32* %77, i32* %78, i8* %75, i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %118

84:                                               ; preds = %70
  %85 = load i32, i32* %14, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %10, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* @INT16SZ, align 4
  %91 = mul nsw i32 2, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32*, i32** %7, align 8
  %95 = icmp ugt i32* %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %118

97:                                               ; preds = %84
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @ns_get16(i32* %98)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* @INT16SZ, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %10, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @ns_get16(i32* %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* @INT16SZ, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %10, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @res_nameinquery(i8* %75, i32 %110, i32 %111, i32* %112, i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %118

117:                                              ; preds = %97
  store i32 0, i32* %17, align 4
  br label %118

118:                                              ; preds = %117, %116, %96, %83
  %119 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %17, align 4
  switch i32 %120, label %125 [
    i32 0, label %121
    i32 1, label %123
  ]

121:                                              ; preds = %118
  br label %66

122:                                              ; preds = %66
  store i32 1, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %118, %64, %55, %40
  %124 = load i32, i32* %5, align 4
  ret i32 %124

125:                                              ; preds = %118
  unreachable
}

declare dso_local i32 @ntohs(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dn_expand(i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @ns_get16(i32*) #1

declare dso_local i32 @res_nameinquery(i8*, i32, i32, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
