; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_recvfrom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_recvfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i64, i32, i32, %struct.ds_rmsg* }
%struct.ds_rmsg = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr = type { i32 }
%struct.ds_header = type { i64 }

@rs_readable = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, i8*, i64, i32, %struct.sockaddr*, i32*)* @ds_recvfrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_recvfrom(%struct.rsocket* %0, i8* %1, i64 %2, i32 %3, %struct.sockaddr* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rsocket*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ds_rmsg*, align 8
  %15 = alloca %struct.ds_header*, align 8
  %16 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %18 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @rs_readable, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @EINVAL, align 4
  %25 = call i32 @ERR(i32 %24)
  store i32 %25, i32* %7, align 4
  br label %128

26:                                               ; preds = %6
  %27 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %28 = call i32 @rs_have_rdata(%struct.rsocket* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %32 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @rs_nonblocking(%struct.rsocket* %32, i32 %33)
  %35 = call i32 @ds_get_comp(%struct.rsocket* %31, i32 %34, i32 (%struct.rsocket*)* @rs_have_rdata)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %16, align 4
  store i32 %39, i32* %7, align 4
  br label %128

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %26
  %42 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %43 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %42, i32 0, i32 4
  %44 = load %struct.ds_rmsg*, %struct.ds_rmsg** %43, align 8
  %45 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %46 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.ds_rmsg, %struct.ds_rmsg* %44, i64 %47
  store %struct.ds_rmsg* %48, %struct.ds_rmsg** %14, align 8
  %49 = load %struct.ds_rmsg*, %struct.ds_rmsg** %14, align 8
  %50 = getelementptr inbounds %struct.ds_rmsg, %struct.ds_rmsg* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ds_rmsg*, %struct.ds_rmsg** %14, align 8
  %55 = getelementptr inbounds %struct.ds_rmsg, %struct.ds_rmsg* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = inttoptr i64 %57 to %struct.ds_header*
  store %struct.ds_header* %58, %struct.ds_header** %15, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.ds_rmsg*, %struct.ds_rmsg** %14, align 8
  %61 = getelementptr inbounds %struct.ds_rmsg, %struct.ds_rmsg* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ds_header*, %struct.ds_header** %15, align 8
  %64 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %62, %65
  %67 = icmp ugt i64 %59, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %41
  %69 = load %struct.ds_rmsg*, %struct.ds_rmsg** %14, align 8
  %70 = getelementptr inbounds %struct.ds_rmsg, %struct.ds_rmsg* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ds_header*, %struct.ds_header** %15, align 8
  %73 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %71, %74
  store i64 %75, i64* %10, align 8
  br label %76

76:                                               ; preds = %68, %41
  %77 = load i8*, i8** %9, align 8
  %78 = load %struct.ds_header*, %struct.ds_header** %15, align 8
  %79 = bitcast %struct.ds_header* %78 to i8*
  %80 = load %struct.ds_header*, %struct.ds_header** %15, align 8
  %81 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr i8, i8* %79, i64 %82
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @memcpy(i8* %77, i8* %83, i64 %84)
  %86 = load i32*, i32** %13, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = load %struct.ds_header*, %struct.ds_header** %15, align 8
  %92 = call i32 @ds_set_src(%struct.sockaddr* %89, i32* %90, %struct.ds_header* %91)
  br label %93

93:                                               ; preds = %88, %76
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @MSG_PEEK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %125, label %98

98:                                               ; preds = %93
  %99 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %100 = load %struct.ds_rmsg*, %struct.ds_rmsg** %14, align 8
  %101 = getelementptr inbounds %struct.ds_rmsg, %struct.ds_rmsg* %100, i32 0, i32 2
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load %struct.ds_rmsg*, %struct.ds_rmsg** %14, align 8
  %104 = getelementptr inbounds %struct.ds_rmsg, %struct.ds_rmsg* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @ds_post_recv(%struct.rsocket* %99, %struct.TYPE_2__* %102, i64 %105)
  %107 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %108 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %108, align 8
  %111 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %112 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = icmp eq i64 %110, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %98
  %118 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %119 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  br label %120

120:                                              ; preds = %117, %98
  %121 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %122 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %120, %93
  %126 = load i64, i64* %10, align 8
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %125, %38, %23
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @rs_have_rdata(%struct.rsocket*) #1

declare dso_local i32 @ds_get_comp(%struct.rsocket*, i32, i32 (%struct.rsocket*)*) #1

declare dso_local i32 @rs_nonblocking(%struct.rsocket*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ds_set_src(%struct.sockaddr*, i32*, %struct.ds_header*) #1

declare dso_local i32 @ds_post_recv(%struct.rsocket*, %struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
