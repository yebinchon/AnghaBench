; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_udp.c_readudp.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_udp.c_readudp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodesc = type { i64 }
%struct.udphdr = type { i64, i64, i64 }
%struct.udpiphdr = type { i64, i32 }
%struct.ip = type { i32 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readudp(%struct.iodesc* %0, i8** %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iodesc*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.udphdr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.udpiphdr*, align 8
  %14 = alloca %struct.ip*, align 8
  %15 = alloca %struct.ip, align 4
  store %struct.iodesc* %0, %struct.iodesc** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.udphdr* null, %struct.udphdr** %11, align 8
  store i8* null, i8** %12, align 8
  %16 = load %struct.iodesc*, %struct.iodesc** %6, align 8
  %17 = bitcast %struct.udphdr** %11 to i8**
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @IPPROTO_UDP, align 4
  %20 = call i32 @readip(%struct.iodesc* %16, i8** %12, i8** %17, i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %34, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 24
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %30 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ntohs(i64 %31)
  %33 = icmp ne i32 %28, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27, %23, %4
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @free(i8* %35)
  store i32 -1, i32* %5, align 4
  br label %129

37:                                               ; preds = %27
  %38 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %39 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.iodesc*, %struct.iodesc** %6, align 8
  %42 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @free(i8* %46)
  store i32 -1, i32* %5, align 4
  br label %129

48:                                               ; preds = %37
  %49 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %50 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %48
  %54 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %55 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @ntohs(i64 %56)
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 4
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %62 = bitcast %struct.udphdr* %61 to %struct.ip*
  %63 = getelementptr inbounds %struct.ip, %struct.ip* %62, i64 -1
  store %struct.ip* %63, %struct.ip** %14, align 8
  %64 = load %struct.ip*, %struct.ip** %14, align 8
  %65 = bitcast %struct.ip* %15 to i8*
  %66 = bitcast %struct.ip* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  %67 = load %struct.ip*, %struct.ip** %14, align 8
  %68 = bitcast %struct.ip* %67 to %struct.udpiphdr*
  store %struct.udpiphdr* %68, %struct.udpiphdr** %13, align 8
  %69 = load %struct.udpiphdr*, %struct.udpiphdr** %13, align 8
  %70 = getelementptr inbounds %struct.udpiphdr, %struct.udpiphdr* %69, i32 0, i32 1
  %71 = call i32 @bzero(i32* %70, i32 4)
  %72 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %73 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.udpiphdr*, %struct.udpiphdr** %13, align 8
  %76 = getelementptr inbounds %struct.udpiphdr, %struct.udpiphdr* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.udpiphdr*, %struct.udpiphdr** %13, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i64 @in_cksum(%struct.udpiphdr* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %53
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @free(i8* %82)
  store i32 -1, i32* %5, align 4
  br label %129

84:                                               ; preds = %53
  %85 = load %struct.ip*, %struct.ip** %14, align 8
  %86 = bitcast %struct.ip* %85 to i8*
  %87 = bitcast %struct.ip* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 4, i1 false)
  br label %88

88:                                               ; preds = %84, %48
  %89 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %90 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @ntohs(i64 %91)
  %93 = sext i32 %92 to i64
  %94 = icmp ult i64 %93, 24
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 @free(i8* %96)
  store i32 -1, i32* %5, align 4
  br label %129

98:                                               ; preds = %88
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %102 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @ntohs(i64 %103)
  %105 = sext i32 %104 to i64
  %106 = sub i64 %105, 24
  %107 = icmp ugt i64 %100, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %98
  %109 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %110 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @ntohs(i64 %111)
  %113 = sext i32 %112 to i64
  %114 = sub i64 %113, 24
  br label %118

115:                                              ; preds = %98
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  br label %118

118:                                              ; preds = %115, %108
  %119 = phi i64 [ %114, %108 ], [ %117, %115 ]
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %10, align 4
  %121 = load i8*, i8** %12, align 8
  %122 = load i8**, i8*** %7, align 8
  store i8* %121, i8** %122, align 8
  %123 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %124 = ptrtoint %struct.udphdr* %123 to i64
  %125 = add i64 %124, 24
  %126 = inttoptr i64 %125 to i8*
  %127 = load i8**, i8*** %8, align 8
  store i8* %126, i8** %127, align 8
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %118, %95, %81, %45, %34
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @readip(%struct.iodesc*, i8**, i8**, i32, i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @in_cksum(%struct.udpiphdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
