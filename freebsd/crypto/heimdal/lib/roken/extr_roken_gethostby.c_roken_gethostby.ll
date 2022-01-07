; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_roken_gethostby.c_roken_gethostby.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_roken_gethostby.c_roken_gethostby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i64 }
%struct.hostent = type { i8*, i32, i8**, i32, i32* }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i32 }

@dns_addr = common dso_local global %struct.sockaddr_in zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"GET %s?%s HTTP/1.0\0D\0A\0D\0A\00", align 1
@dns_req = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@roken_gethostby.he = internal global %struct.hostent zeroinitializer, align 8
@roken_gethostby.addrs = internal global [64 x i8] zeroinitializer, align 16
@roken_gethostby.addr_list = internal global [17 x i8*] zeroinitializer, align 16
@MAX_ADDRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hostent* (i8*)* @roken_gethostby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hostent* @roken_gethostby(i8* %0) #0 {
  %2 = alloca %struct.hostent*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.in_addr, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @dns_addr, i32 0, i32 0), align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.hostent* null, %struct.hostent** %2, align 8
  br label %173

18:                                               ; preds = %1
  %19 = bitcast %struct.sockaddr_in* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.sockaddr_in* @dns_addr to i8*), i64 8, i1 false)
  %20 = load i32, i32* @dns_req, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @asprintf(i8** %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store %struct.hostent* null, %struct.hostent** %2, align 8
  br label %173

25:                                               ; preds = %18
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store %struct.hostent* null, %struct.hostent** %2, align 8
  br label %173

29:                                               ; preds = %25
  %30 = load i32, i32* @AF_INET, align 4
  %31 = load i32, i32* @SOCK_STREAM, align 4
  %32 = call i32 @socket(i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @free(i8* %36)
  store %struct.hostent* null, %struct.hostent** %2, align 8
  br label %173

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  %40 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %41 = call i64 @connect(i32 %39, %struct.sockaddr* %40, i32 8)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @close(i32 %44)
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @free(i8* %46)
  store %struct.hostent* null, %struct.hostent** %2, align 8
  br label %173

48:                                               ; preds = %38
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @strlen(i8* %49)
  store i64 %50, i64* %12, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i64 @write(i32 %51, i8* %52, i64 %53)
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @close(i32 %58)
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @free(i8* %60)
  store %struct.hostent* null, %struct.hostent** %2, align 8
  br label %173

62:                                               ; preds = %48
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @free(i8* %63)
  br label %65

65:                                               ; preds = %62, %79
  %66 = load i32, i32* %4, align 4
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = sub i64 1024, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @read(i32 %66, i8* %70, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %83

79:                                               ; preds = %65
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %65

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %85
  store i8 0, i8* %86, align 1
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @close(i32 %87)
  %89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %90 = call i8* @strstr(i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %90, i8** %10, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %83
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 4
  store i8* %95, i8** %10, align 8
  br label %97

96:                                               ; preds = %83
  store %struct.hostent* null, %struct.hostent** %2, align 8
  br label %173

97:                                               ; preds = %93
  store i8* null, i8** %11, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = call i8* @strtok_r(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %11)
  store i8* %99, i8** %10, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store %struct.hostent* null, %struct.hostent** %2, align 8
  br label %173

103:                                              ; preds = %97
  store i32 0, i32* %13, align 4
  %104 = load i8*, i8** %10, align 8
  store i8* %104, i8** getelementptr inbounds (%struct.hostent, %struct.hostent* @roken_gethostby.he, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.hostent, %struct.hostent* @roken_gethostby.he, i32 0, i32 4), align 8
  %105 = load i32, i32* @AF_INET, align 4
  store i32 %105, i32* getelementptr inbounds (%struct.hostent, %struct.hostent* @roken_gethostby.he, i32 0, i32 3), align 8
  store i32 4, i32* getelementptr inbounds (%struct.hostent, %struct.hostent* @roken_gethostby.he, i32 0, i32 1), align 8
  br label %106

106:                                              ; preds = %114, %103
  %107 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %11)
  store i8* %107, i8** %10, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 16
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i1 [ false, %106 ], [ %111, %109 ]
  br i1 %113, label %114, label %172

114:                                              ; preds = %112
  %115 = load i8*, i8** %10, align 8
  %116 = call i32 @inet_aton(i8* %115, %struct.in_addr* %14)
  %117 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ntohl(i32 %118)
  %120 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %13, align 4
  %122 = mul nsw i32 %121, 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [64 x i8], [64 x i8]* @roken_gethostby.addrs, i64 0, i64 %123
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [17 x i8*], [17 x i8*]* @roken_gethostby.addr_list, i64 0, i64 %126
  store i8* %124, i8** %127, align 8
  %128 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 24
  %131 = and i32 %130, 255
  %132 = trunc i32 %131 to i8
  %133 = load i32, i32* %13, align 4
  %134 = mul nsw i32 %133, 4
  %135 = add nsw i32 %134, 0
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [64 x i8], [64 x i8]* @roken_gethostby.addrs, i64 0, i64 %136
  store i8 %132, i8* %137, align 1
  %138 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 16
  %141 = and i32 %140, 255
  %142 = trunc i32 %141 to i8
  %143 = load i32, i32* %13, align 4
  %144 = mul nsw i32 %143, 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* @roken_gethostby.addrs, i64 0, i64 %146
  store i8 %142, i8* %147, align 1
  %148 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 8
  %151 = and i32 %150, 255
  %152 = trunc i32 %151 to i8
  %153 = load i32, i32* %13, align 4
  %154 = mul nsw i32 %153, 4
  %155 = add nsw i32 %154, 2
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [64 x i8], [64 x i8]* @roken_gethostby.addrs, i64 0, i64 %156
  store i8 %152, i8* %157, align 1
  %158 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 %159, 0
  %161 = and i32 %160, 255
  %162 = trunc i32 %161 to i8
  %163 = load i32, i32* %13, align 4
  %164 = mul nsw i32 %163, 4
  %165 = add nsw i32 %164, 3
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [64 x i8], [64 x i8]* @roken_gethostby.addrs, i64 0, i64 %166
  store i8 %162, i8* %167, align 1
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [17 x i8*], [17 x i8*]* @roken_gethostby.addr_list, i64 0, i64 %170
  store i8* null, i8** %171, align 8
  br label %106

172:                                              ; preds = %112
  store i8** getelementptr inbounds ([17 x i8*], [17 x i8*]* @roken_gethostby.addr_list, i64 0, i64 0), i8*** getelementptr inbounds (%struct.hostent, %struct.hostent* @roken_gethostby.he, i32 0, i32 2), align 8
  store %struct.hostent* @roken_gethostby.he, %struct.hostent** %2, align 8
  br label %173

173:                                              ; preds = %172, %102, %96, %57, %43, %35, %28, %24, %17
  %174 = load %struct.hostent*, %struct.hostent** %2, align 8
  ret %struct.hostent* %174
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @asprintf(i8**, i8*, i32, i8*) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @write(i32, i8*, i64) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #2

declare dso_local i32 @inet_aton(i8*, %struct.in_addr*) #2

declare dso_local i32 @ntohl(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
