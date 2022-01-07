; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_for_creds.c_add_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_for_creds.c_add_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.addrinfo = type { i32, %struct.addrinfo* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KRB5_PROG_ATYPE_NOSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_10__*, %struct.addrinfo*)* @add_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_addrs(i32 %0, %struct.TYPE_10__* %1, %struct.addrinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.TYPE_11__, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  store %struct.addrinfo* %14, %struct.addrinfo** %12, align 8
  br label %15

15:                                               ; preds = %21, %3
  %16 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %17 = icmp ne %struct.addrinfo* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %18
  %22 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i32 0, i32 1
  %24 = load %struct.addrinfo*, %struct.addrinfo** %23, align 8
  store %struct.addrinfo* %24, %struct.addrinfo** %12, align 8
  br label %15

25:                                               ; preds = %15
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = add i32 %31, %32
  %34 = zext i32 %33 to i64
  %35 = mul i64 %34, 16
  %36 = trunc i64 %35 to i32
  %37 = call i8* @realloc(%struct.TYPE_11__* %28, i32 %36)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %25
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %52 = call i32 @krb5_set_error_message(i32 %49, i32 %50, i32 %51)
  br label %141

53:                                               ; preds = %40, %25
  %54 = load i8*, i8** %11, align 8
  %55 = bitcast i8* %54 to %struct.TYPE_11__*
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %85, %53
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %65, %66
  %68 = icmp ult i32 %62, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %61
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = call i32 @krb5_data_zero(i32* %83)
  br label %85

85:                                               ; preds = %69
  %86 = load i32, i32* %10, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %61

88:                                               ; preds = %61
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %10, align 4
  %92 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  store %struct.addrinfo* %92, %struct.addrinfo** %12, align 8
  br label %93

93:                                               ; preds = %136, %88
  %94 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %95 = icmp ne %struct.addrinfo* %94, null
  br i1 %95, label %96, label %140

96:                                               ; preds = %93
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %99 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @krb5_sockaddr2address(i32 %97, i32 %100, %struct.TYPE_11__* %13)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %96
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = call i64 @krb5_address_search(i32 %105, %struct.TYPE_11__* %13, %struct.TYPE_10__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @krb5_free_address(i32 %110, %struct.TYPE_11__* %13)
  br label %122

112:                                              ; preds = %104
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %10, align 4
  %118 = zext i32 %116 to i64
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i64 %118
  %120 = bitcast %struct.TYPE_11__* %119 to i8*
  %121 = bitcast %struct.TYPE_11__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 16, i1 false)
  br label %122

122:                                              ; preds = %112, %109
  br label %132

123:                                              ; preds = %96
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @KRB5_PROG_ATYPE_NOSUPP, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @krb5_clear_error_message(i32 %128)
  br label %131

130:                                              ; preds = %123
  br label %141

131:                                              ; preds = %127
  br label %132

132:                                              ; preds = %131, %122
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %132
  %137 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %138 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %137, i32 0, i32 1
  %139 = load %struct.addrinfo*, %struct.addrinfo** %138, align 8
  store %struct.addrinfo* %139, %struct.addrinfo** %12, align 8
  br label %93

140:                                              ; preds = %93
  store i32 0, i32* %4, align 4
  br label %146

141:                                              ; preds = %130, %47
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %144 = call i32 @krb5_free_addresses(i32 %142, %struct.TYPE_10__* %143)
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %141, %140
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i8* @realloc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @krb5_data_zero(i32*) #1

declare dso_local i32 @krb5_sockaddr2address(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @krb5_address_search(i32, %struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @krb5_free_address(i32, %struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i32 @krb5_free_addresses(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
