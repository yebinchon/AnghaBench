; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_header32_ex_tm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_header32_ex_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auditinfo_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.timeval = type { i32, i32 }

@AU_IPv4 = common dso_local global i32 0, align 4
@AU_IPv6 = common dso_local global i32 0, align 4
@AUT_HEADER32_EX = common dso_local global i32 0, align 4
@AUDIT_HEADER_VERSION_OPENBSM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_header32_ex_tm(i32 %0, i32 %1, i32 %2, i64 %3, %struct.auditinfo_addr* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.timeval, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.auditinfo_addr*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__*, align 8
  %16 = bitcast %struct.timeval* %7 to i64*
  store i64 %3, i64* %16, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.auditinfo_addr* %4, %struct.auditinfo_addr** %11, align 8
  store i32* null, i32** %13, align 8
  %17 = load %struct.auditinfo_addr*, %struct.auditinfo_addr** %11, align 8
  %18 = getelementptr inbounds %struct.auditinfo_addr, %struct.auditinfo_addr* %17, i32 0, i32 0
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %15, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AU_IPv4, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @AU_IPv6, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32* null, i32** %6, align 8
  br label %96

31:                                               ; preds = %24, %5
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = add i64 32, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @GET_TOKEN_AREA(i32* %32, i32* %33, i32 %39)
  %41 = load i32*, i32** %12, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32* null, i32** %6, align 8
  br label %96

44:                                               ; preds = %31
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* @AUT_HEADER32_EX, align 4
  %47 = call i32 @ADD_U_CHAR(i32* %45, i32 %46)
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ADD_U_INT32(i32* %48, i32 %49)
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* @AUDIT_HEADER_VERSION_OPENBSM, align 4
  %53 = call i32 @ADD_U_CHAR(i32* %51, i32 %52)
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @ADD_U_INT16(i32* %54, i32 %55)
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @ADD_U_INT16(i32* %57, i32 %58)
  %60 = load i32*, i32** %13, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ADD_U_INT32(i32* %60, i32 %63)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @AU_IPv6, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %44
  %71 = load i32*, i32** %13, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = call i32 @ADD_MEM(i32* %71, i32* %75, i32 16)
  br label %84

77:                                               ; preds = %44
  %78 = load i32*, i32** %13, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = call i32 @ADD_MEM(i32* %78, i32* %82, i32 4)
  br label %84

84:                                               ; preds = %77, %70
  %85 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %86, 1000
  store i32 %87, i32* %14, align 4
  %88 = load i32*, i32** %13, align 8
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ADD_U_INT32(i32* %88, i32 %90)
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @ADD_U_INT32(i32* %92, i32 %93)
  %95 = load i32*, i32** %12, align 8
  store i32* %95, i32** %6, align 8
  br label %96

96:                                               ; preds = %84, %43, %30
  %97 = load i32*, i32** %6, align 8
  ret i32* %97
}

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i32) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i32) #1

declare dso_local i32 @ADD_U_INT32(i32*, i32) #1

declare dso_local i32 @ADD_U_INT16(i32*, i32) #1

declare dso_local i32 @ADD_MEM(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
