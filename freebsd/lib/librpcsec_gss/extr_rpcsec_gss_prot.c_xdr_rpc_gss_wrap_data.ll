; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_rpcsec_gss_prot.c_xdr_rpc_gss_wrap_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_rpcsec_gss_prot.c_xdr_rpc_gss_wrap_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@rpc_gss_svc_integrity = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"gss_get_mic failed\00", align 1
@rpc_gss_svc_privacy = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"gss_wrap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_rpc_gss_wrap_data(i32* %0, i32 (i32*, i32)* %1, i32 %2, i32 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32 (i32*, i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__, align 4
  %17 = alloca %struct.TYPE_8__, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 (i32*, i32)* %1, i32 (i32*, i32)** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @XDR_GETPOS(i32* %25)
  store i32 %26, i32* %20, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %20, align 4
  %29 = add nsw i32 %28, 4
  %30 = call i32 @XDR_SETPOS(i32* %27, i32 %29)
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @xdr_u_int(i32* %31, i32* %15)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %7
  %35 = load i32 (i32*, i32)*, i32 (i32*, i32)** %10, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 %35(i32* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34, %7
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %8, align 4
  br label %118

42:                                               ; preds = %34
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @XDR_GETPOS(i32* %43)
  store i32 %44, i32* %21, align 4
  %45 = load i32, i32* %21, align 4
  %46 = load i32, i32* %20, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sub nsw i32 %47, 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %20, align 4
  %52 = add nsw i32 %51, 4
  %53 = call i32 @XDR_SETPOS(i32* %50, i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @XDR_INLINE(i32* %54, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %24, align 4
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* @rpc_gss_svc_integrity, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %42
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %20, align 4
  %66 = call i32 @XDR_SETPOS(i32* %64, i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %23, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @xdr_u_int(i32* %69, i32* %23)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %63
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %8, align 4
  br label %118

74:                                               ; preds = %63
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i64 @gss_get_mic(i64* %19, i32 %75, i32 %76, %struct.TYPE_8__* %16, %struct.TYPE_8__* %17)
  store i64 %77, i64* %18, align 8
  %78 = load i64, i64* %18, align 8
  %79 = load i64, i64* @GSS_S_COMPLETE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = call i32 @log_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %8, align 4
  br label %118

84:                                               ; preds = %74
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %21, align 4
  %87 = call i32 @XDR_SETPOS(i32* %85, i32 %86)
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @xdr_gss_buffer_desc(i32* %88, %struct.TYPE_8__* %17)
  store i32 %89, i32* %24, align 4
  %90 = call i32 @gss_release_buffer(i64* %19, %struct.TYPE_8__* %17)
  br label %116

91:                                               ; preds = %42
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* @rpc_gss_svc_privacy, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %91
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @TRUE, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i64 @gss_wrap(i64* %19, i32 %96, i32 %97, i32 %98, %struct.TYPE_8__* %16, i32* %22, %struct.TYPE_8__* %17)
  store i64 %99, i64* %18, align 8
  %100 = load i64, i64* %18, align 8
  %101 = load i64, i64* @GSS_S_COMPLETE, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %95
  %104 = load i64, i64* %18, align 8
  %105 = load i64, i64* %19, align 8
  %106 = call i32 @log_status(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i64 %104, i64 %105)
  %107 = load i32, i32* @FALSE, align 4
  store i32 %107, i32* %8, align 4
  br label %118

108:                                              ; preds = %95
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %20, align 4
  %111 = call i32 @XDR_SETPOS(i32* %109, i32 %110)
  %112 = load i32*, i32** %9, align 8
  %113 = call i32 @xdr_gss_buffer_desc(i32* %112, %struct.TYPE_8__* %17)
  store i32 %113, i32* %24, align 4
  %114 = call i32 @gss_release_buffer(i64* %19, %struct.TYPE_8__* %17)
  br label %115

115:                                              ; preds = %108, %91
  br label %116

116:                                              ; preds = %115, %84
  %117 = load i32, i32* %24, align 4
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %116, %103, %81, %72, %40
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

declare dso_local i32 @XDR_GETPOS(i32*) #1

declare dso_local i32 @XDR_SETPOS(i32*, i32) #1

declare dso_local i32 @xdr_u_int(i32*, i32*) #1

declare dso_local i32 @XDR_INLINE(i32*, i32) #1

declare dso_local i64 @gss_get_mic(i64*, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @xdr_gss_buffer_desc(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_8__*) #1

declare dso_local i64 @gss_wrap(i64*, i32, i32, i32, %struct.TYPE_8__*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @log_status(i8*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
