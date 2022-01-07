; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_unix.c_authunix_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_unix.c_authunix_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audata = type { %struct.TYPE_2__, %struct.TYPE_2__, i64, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, %struct.audata*, i32 }
%struct.authunix_parms = type { i8*, i32, i32, i32, i32*, i32 }
%struct.timeval = type { i32 }

@MAX_AUTH_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"authunix_create: out of memory\00", align 1
@_null_auth = common dso_local global i32 0, align 4
@XDR_ENCODE = common dso_local global i32 0, align 4
@AUTH_UNIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.audata* @authunix_create(i8* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.audata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.authunix_parms, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.timeval, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.audata*, align 8
  %18 = alloca %struct.audata*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %20 = load i32, i32* @MAX_AUTH_BYTES, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  store %struct.audata* null, %struct.audata** %18, align 8
  %24 = call i8* @mem_alloc(i32 80)
  %25 = bitcast i8* %24 to %struct.audata*
  store %struct.audata* %25, %struct.audata** %17, align 8
  %26 = load %struct.audata*, %struct.audata** %17, align 8
  %27 = icmp eq %struct.audata* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %111

30:                                               ; preds = %5
  %31 = call i8* @mem_alloc(i32 80)
  %32 = bitcast i8* %31 to %struct.audata*
  store %struct.audata* %32, %struct.audata** %18, align 8
  %33 = load %struct.audata*, %struct.audata** %18, align 8
  %34 = icmp eq %struct.audata* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %111

37:                                               ; preds = %30
  %38 = call i32 (...) @authunix_ops()
  %39 = load %struct.audata*, %struct.audata** %17, align 8
  %40 = getelementptr inbounds %struct.audata, %struct.audata* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load %struct.audata*, %struct.audata** %18, align 8
  %42 = ptrtoint %struct.audata* %41 to i64
  %43 = load %struct.audata*, %struct.audata** %17, align 8
  %44 = getelementptr inbounds %struct.audata, %struct.audata* %43, i32 0, i32 5
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* @_null_auth, align 4
  %46 = load %struct.audata*, %struct.audata** %18, align 8
  %47 = getelementptr inbounds %struct.audata, %struct.audata* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.audata*, %struct.audata** %17, align 8
  %49 = getelementptr inbounds %struct.audata, %struct.audata* %48, i32 0, i32 4
  store i32 %45, i32* %49, align 4
  %50 = load %struct.audata*, %struct.audata** %18, align 8
  %51 = getelementptr inbounds %struct.audata, %struct.audata* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.audata*, %struct.audata** %18, align 8
  %53 = getelementptr inbounds %struct.audata, %struct.audata* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store %struct.audata* null, %struct.audata** %54, align 8
  %55 = call i32 @gettimeofday(%struct.timeval* %15, i32* null)
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.authunix_parms, %struct.authunix_parms* %12, i32 0, i32 5
  store i32 %57, i32* %58, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds %struct.authunix_parms, %struct.authunix_parms* %12, i32 0, i32 0
  store i8* %59, i8** %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = getelementptr inbounds %struct.authunix_parms, %struct.authunix_parms* %12, i32 0, i32 1
  store i32 %61, i32* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = getelementptr inbounds %struct.authunix_parms, %struct.authunix_parms* %12, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = getelementptr inbounds %struct.authunix_parms, %struct.authunix_parms* %12, i32 0, i32 3
  store i32 %65, i32* %66, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds %struct.authunix_parms, %struct.authunix_parms* %12, i32 0, i32 4
  store i32* %67, i32** %68, align 8
  %69 = load i32, i32* @MAX_AUTH_BYTES, align 4
  %70 = load i32, i32* @XDR_ENCODE, align 4
  %71 = call i32 @xdrmem_create(i32* %16, i8* %23, i32 %69, i32 %70)
  %72 = call i32 @xdr_authunix_parms(i32* %16, %struct.authunix_parms* %12)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %37
  %75 = call i32 (...) @abort() #5
  unreachable

76:                                               ; preds = %37
  %77 = call i32 @XDR_GETPOS(i32* %16)
  store i32 %77, i32* %10, align 4
  %78 = load %struct.audata*, %struct.audata** %18, align 8
  %79 = getelementptr inbounds %struct.audata, %struct.audata* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* @AUTH_UNIX, align 4
  %82 = load %struct.audata*, %struct.audata** %18, align 8
  %83 = getelementptr inbounds %struct.audata, %struct.audata* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i8* @mem_alloc(i32 %85)
  %87 = bitcast i8* %86 to %struct.audata*
  %88 = load %struct.audata*, %struct.audata** %18, align 8
  %89 = getelementptr inbounds %struct.audata, %struct.audata* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store %struct.audata* %87, %struct.audata** %90, align 8
  %91 = icmp eq %struct.audata* %87, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %76
  %93 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %111

94:                                               ; preds = %76
  %95 = load %struct.audata*, %struct.audata** %18, align 8
  %96 = getelementptr inbounds %struct.audata, %struct.audata* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load %struct.audata*, %struct.audata** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = call i32 @memmove(%struct.audata* %98, i8* %23, i64 %100)
  %102 = load %struct.audata*, %struct.audata** %17, align 8
  %103 = getelementptr inbounds %struct.audata, %struct.audata* %102, i32 0, i32 1
  %104 = load %struct.audata*, %struct.audata** %18, align 8
  %105 = getelementptr inbounds %struct.audata, %struct.audata* %104, i32 0, i32 0
  %106 = bitcast %struct.TYPE_2__* %103 to i8*
  %107 = bitcast %struct.TYPE_2__* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 8 %107, i64 24, i1 false)
  %108 = load %struct.audata*, %struct.audata** %17, align 8
  %109 = call i32 @marshal_new_auth(%struct.audata* %108)
  %110 = load %struct.audata*, %struct.audata** %17, align 8
  store %struct.audata* %110, %struct.audata** %6, align 8
  store i32 1, i32* %19, align 4
  br label %137

111:                                              ; preds = %92, %35, %28
  %112 = load %struct.audata*, %struct.audata** %17, align 8
  %113 = icmp ne %struct.audata* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.audata*, %struct.audata** %17, align 8
  %116 = call i32 @mem_free(%struct.audata* %115, i32 80)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.audata*, %struct.audata** %18, align 8
  %119 = icmp ne %struct.audata* %118, null
  br i1 %119, label %120, label %136

120:                                              ; preds = %117
  %121 = load %struct.audata*, %struct.audata** %18, align 8
  %122 = getelementptr inbounds %struct.audata, %struct.audata* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load %struct.audata*, %struct.audata** %123, align 8
  %125 = icmp ne %struct.audata* %124, null
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load %struct.audata*, %struct.audata** %18, align 8
  %128 = getelementptr inbounds %struct.audata, %struct.audata* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load %struct.audata*, %struct.audata** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @mem_free(%struct.audata* %130, i32 %131)
  br label %133

133:                                              ; preds = %126, %120
  %134 = load %struct.audata*, %struct.audata** %18, align 8
  %135 = call i32 @mem_free(%struct.audata* %134, i32 80)
  br label %136

136:                                              ; preds = %133, %117
  store %struct.audata* null, %struct.audata** %6, align 8
  store i32 1, i32* %19, align 4
  br label %137

137:                                              ; preds = %136, %94
  %138 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load %struct.audata*, %struct.audata** %6, align 8
  ret %struct.audata* %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @mem_alloc(i32) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i32 @authunix_ops(...) #2

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #2

declare dso_local i32 @xdrmem_create(i32*, i8*, i32, i32) #2

declare dso_local i32 @xdr_authunix_parms(i32*, %struct.authunix_parms*) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @XDR_GETPOS(i32*) #2

declare dso_local i32 @memmove(%struct.audata*, i8*, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @marshal_new_auth(%struct.audata*) #2

declare dso_local i32 @mem_free(%struct.audata*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
