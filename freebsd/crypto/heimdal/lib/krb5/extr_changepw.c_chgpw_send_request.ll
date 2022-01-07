; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_changepw.c_chgpw_send_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_changepw.c_chgpw_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i8* }
%struct.iovec = type { i32, i8* }
%struct.msghdr = type { i32, i64, i32*, %struct.iovec*, i64, i32* }

@KRB5_KPASSWD_MALFORMED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@AP_OPTS_MUTUAL_REQUIRED = common dso_local global i32 0, align 4
@AP_OPTS_USE_SUBKEY = common dso_local global i32 0, align 4
@rk_SOCK_ERRNO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"sendmsg %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, %struct.TYPE_11__*, i64, i32, i32, i8*, i8*)* @chgpw_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @chgpw_send_request(i32 %0, i32* %1, %struct.TYPE_11__* %2, i64 %3, i32 %4, i32 %5, i8* %6, i8* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_10__, align 8
  %20 = alloca %struct.TYPE_10__, align 8
  %21 = alloca %struct.TYPE_10__, align 8
  %22 = alloca i64, align 8
  %23 = alloca [6 x i32], align 16
  %24 = alloca [3 x %struct.iovec], align 16
  %25 = alloca %struct.msghdr, align 8
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %8
  %29 = load i64, i64* @KRB5_KPASSWD_MALFORMED, align 8
  store i64 %29, i64* %9, align 8
  br label %147

30:                                               ; preds = %8
  %31 = load i64, i64* %13, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %13, align 8
  %39 = call i64 @krb5_principal_compare(i32 %34, i32 %37, i64 %38)
  %40 = load i64, i64* @TRUE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i64, i64* @KRB5_KPASSWD_MALFORMED, align 8
  store i64 %43, i64* %9, align 8
  br label %147

44:                                               ; preds = %33, %30
  %45 = call i32 @krb5_data_zero(%struct.TYPE_10__* %19)
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* @AP_OPTS_MUTUAL_REQUIRED, align 4
  %49 = load i32, i32* @AP_OPTS_USE_SUBKEY, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %52 = call i64 @krb5_mk_req_extended(i32 %46, i32* %47, i32 %50, i32* null, %struct.TYPE_11__* %51, %struct.TYPE_10__* %19)
  store i64 %52, i64* %18, align 8
  %53 = load i64, i64* %18, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i64, i64* %18, align 8
  store i64 %56, i64* %9, align 8
  br label %147

57:                                               ; preds = %44
  %58 = load i8*, i8** %16, align 8
  %59 = call i8* @rk_UNCONST(i8* %58)
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  store i8* %59, i8** %60, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = call i32 @krb5_data_zero(%struct.TYPE_10__* %20)
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @krb5_mk_priv(i32 %65, i32 %67, %struct.TYPE_10__* %21, %struct.TYPE_10__* %20, i32* null)
  store i64 %68, i64* %18, align 8
  %69 = load i64, i64* %18, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %144

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 6, %74
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %75, %77
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %22, align 8
  %80 = load i64, i64* %22, align 8
  %81 = lshr i64 %80, 8
  %82 = and i64 %81, 255
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds [6 x i32], [6 x i32]* %23, i64 0, i64 0
  store i32 %83, i32* %84, align 16
  %85 = load i64, i64* %22, align 8
  %86 = lshr i64 %85, 0
  %87 = and i64 %86, 255
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds [6 x i32], [6 x i32]* %23, i64 0, i64 1
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds [6 x i32], [6 x i32]* %23, i64 0, i64 2
  store i32 0, i32* %90, align 8
  %91 = getelementptr inbounds [6 x i32], [6 x i32]* %23, i64 0, i64 3
  store i32 1, i32* %91, align 4
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = ashr i32 %93, 8
  %95 = and i32 %94, 255
  %96 = getelementptr inbounds [6 x i32], [6 x i32]* %23, i64 0, i64 4
  store i32 %95, i32* %96, align 16
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = ashr i32 %98, 0
  %100 = and i32 %99, 255
  %101 = getelementptr inbounds [6 x i32], [6 x i32]* %23, i64 0, i64 5
  store i32 %100, i32* %101, align 4
  %102 = call i32 @memset(%struct.msghdr* %25, i32 0, i32 48)
  %103 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %25, i32 0, i32 5
  store i32* null, i32** %103, align 8
  %104 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %25, i32 0, i32 4
  store i64 0, i64* %104, align 8
  %105 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %24, i64 0, i64 0
  %106 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %25, i32 0, i32 3
  store %struct.iovec* %105, %struct.iovec** %106, align 8
  %107 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %25, i32 0, i32 0
  store i32 3, i32* %107, align 8
  %108 = getelementptr inbounds [6 x i32], [6 x i32]* %23, i64 0, i64 0
  %109 = bitcast i32* %108 to i8*
  %110 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %24, i64 0, i64 0
  %111 = getelementptr inbounds %struct.iovec, %struct.iovec* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  %112 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %24, i64 0, i64 0
  %113 = getelementptr inbounds %struct.iovec, %struct.iovec* %112, i32 0, i32 0
  store i32 6, i32* %113, align 16
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %24, i64 0, i64 1
  %117 = getelementptr inbounds %struct.iovec, %struct.iovec* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %24, i64 0, i64 1
  %121 = getelementptr inbounds %struct.iovec, %struct.iovec* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 16
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %24, i64 0, i64 2
  %125 = getelementptr inbounds %struct.iovec, %struct.iovec* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %24, i64 0, i64 2
  %129 = getelementptr inbounds %struct.iovec, %struct.iovec* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 16
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @sendmsg(i32 %130, %struct.msghdr* %25, i32 0)
  %132 = call i64 @rk_IS_SOCKET_ERROR(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %72
  %135 = load i64, i64* @rk_SOCK_ERRNO, align 8
  store i64 %135, i64* %18, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load i64, i64* %18, align 8
  %138 = load i8*, i8** %17, align 8
  %139 = load i64, i64* %18, align 8
  %140 = call i32 @strerror(i64 %139)
  %141 = call i32 @krb5_set_error_message(i32 %136, i64 %137, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %138, i32 %140)
  br label %142

142:                                              ; preds = %134, %72
  %143 = call i32 @krb5_data_free(%struct.TYPE_10__* %20)
  br label %144

144:                                              ; preds = %142, %71
  %145 = call i32 @krb5_data_free(%struct.TYPE_10__* %19)
  %146 = load i64, i64* %18, align 8
  store i64 %146, i64* %9, align 8
  br label %147

147:                                              ; preds = %144, %55, %42, %28
  %148 = load i64, i64* %9, align 8
  ret i64 %148
}

declare dso_local i64 @krb5_principal_compare(i32, i32, i64) #1

declare dso_local i32 @krb5_data_zero(%struct.TYPE_10__*) #1

declare dso_local i64 @krb5_mk_req_extended(i32, i32*, i32, i32*, %struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i8* @rk_UNCONST(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @krb5_mk_priv(i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i64 @rk_IS_SOCKET_ERROR(i32) #1

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
