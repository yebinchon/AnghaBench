; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_send_to_kdc.c_send_and_recv_http.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_send_to_kdc.c_send_and_recv_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"GET %s%s HTTP/1.0\0D\0A\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, %struct.TYPE_7__*, %struct.TYPE_7__*)* @send_and_recv_http to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_and_recv_http(i32 %0, i32 %1, i8* %2, %struct.TYPE_7__* %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  store i8* null, i8** %12, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @base64_encode(i8* %21, i32 %24, i8** %13)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %147

29:                                               ; preds = %5
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @asprintf(i8** %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31)
  store i32 %32, i32* %14, align 4
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 @free(i8* %33)
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i8*, i8** %12, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %29
  store i32 -1, i32* %6, align 4
  br label %147

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = call i32 @net_write(i32 %42, i8* %43, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %6, align 4
  br label %147

53:                                               ; preds = %41
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %57 = call i32 @recv_loop(i32 %54, i32 %55, i32 0, i32 0, %struct.TYPE_7__* %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %6, align 4
  br label %147

62:                                               ; preds = %53
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  %70 = call i8* @realloc(i8* %65, i32 %69)
  store i8* %70, i8** %17, align 8
  %71 = load i8*, i8** %17, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %75 = call i32 @krb5_data_free(%struct.TYPE_7__* %74)
  store i32 -1, i32* %6, align 4
  br label %147

76:                                               ; preds = %62
  %77 = load i8*, i8** %17, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %77, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load i8*, i8** %17, align 8
  %84 = call i8* @strstr(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %84, i8** %18, align 8
  %85 = load i8*, i8** %18, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %76
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %89 = call i32 @krb5_data_zero(%struct.TYPE_7__* %88)
  %90 = load i8*, i8** %17, align 8
  %91 = call i32 @free(i8* %90)
  store i32 -1, i32* %6, align 4
  br label %147

92:                                               ; preds = %76
  %93 = load i8*, i8** %18, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 4
  store i8* %94, i8** %18, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** %18, align 8
  %99 = load i8*, i8** %17, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = sub nsw i64 %106, %102
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %111, 4
  br i1 %112, label %113, label %118

113:                                              ; preds = %92
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %115 = call i32 @krb5_data_zero(%struct.TYPE_7__* %114)
  %116 = load i8*, i8** %17, align 8
  %117 = call i32 @free(i8* %116)
  store i32 -1, i32* %6, align 4
  br label %147

118:                                              ; preds = %92
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %121, 4
  store i32 %122, i32* %120, align 8
  %123 = load i8*, i8** %18, align 8
  %124 = call i32 @_krb5_get_int(i8* %123, i64* %16, i32 4)
  %125 = load i64, i64* %16, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = icmp ne i64 %125, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %118
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %133 = call i32 @krb5_data_zero(%struct.TYPE_7__* %132)
  %134 = load i8*, i8** %17, align 8
  %135 = call i32 @free(i8* %134)
  store i32 -1, i32* %6, align 4
  br label %147

136:                                              ; preds = %118
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i8*, i8** %18, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = call i32 @memmove(i8* %139, i8* %141, i64 %145)
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %136, %131, %113, %87, %73, %60, %51, %40, %28
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @base64_encode(i8*, i32, i8**) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @net_write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @recv_loop(i32, i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_7__*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @krb5_data_zero(%struct.TYPE_7__*) #1

declare dso_local i32 @_krb5_get_int(i8*, i64*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
