; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_cb.c_msg_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_cb.c_msg_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c">>>\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"<<<\00", align 1
@ssl_versions = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SSL3_VERSION = common dso_local global i32 0, align 4
@TLS1_VERSION = common dso_local global i32 0, align 4
@TLS1_1_VERSION = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@DTLS1_VERSION = common dso_local global i32 0, align 4
@DTLS1_BAD_VER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c", ChangeCipherSpec\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c", Alert\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c", ???\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c", warning\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c", fatal\00", align 1
@alert_types = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c" ???\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c", Handshake\00", align 1
@handshakes = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c", ApplicationData\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c", Heartbeat\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c", HeartbeatRequest\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c", HeartbeatResponse\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"%s %s%s [length %04lx]%s%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\0A   \00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msg_cb(i32 %0, i32 %1, i32 %2, i8* %3, i64 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %15, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  store i8* %29, i8** %16, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @ssl_versions, align 4
  %32 = call i8* @lookup(i32 %30, i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %32, i8** %17, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 8
  %33 = load i8*, i8** %11, align 8
  store i8* %33, i8** %21, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @SSL3_VERSION, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %61, label %37

37:                                               ; preds = %7
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @TLS1_VERSION, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %61, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @TLS1_1_VERSION, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @TLS1_2_VERSION, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @TLS1_3_VERSION, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @DTLS1_VERSION, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @DTLS1_BAD_VER, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %107

61:                                               ; preds = %57, %53, %49, %45, %41, %37, %7
  %62 = load i32, i32* %10, align 4
  switch i32 %62, label %106 [
    i32 20, label %63
    i32 21, label %64
    i32 22, label %82
    i32 23, label %93
    i32 24, label %94
  ]

63:                                               ; preds = %61
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  br label %106

64:                                               ; preds = %61
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %19, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp eq i64 %65, 2
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load i8*, i8** %21, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  switch i32 %71, label %74 [
    i32 1, label %72
    i32 2, label %73
  ]

72:                                               ; preds = %67
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %19, align 8
  br label %74

73:                                               ; preds = %67
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %19, align 8
  br label %74

74:                                               ; preds = %67, %73, %72
  %75 = load i8*, i8** %21, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load i32, i32* @alert_types, align 4
  %80 = call i8* @lookup(i32 %78, i32 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i8* %80, i8** %20, align 8
  br label %81

81:                                               ; preds = %74, %64
  br label %106

82:                                               ; preds = %61
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  %83 = load i64, i64* %12, align 8
  %84 = icmp ugt i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i8*, i8** %21, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = load i32, i32* @handshakes, align 4
  %91 = call i8* @lookup(i32 %89, i32 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %91, i8** %19, align 8
  br label %92

92:                                               ; preds = %85, %82
  br label %106

93:                                               ; preds = %61
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %18, align 8
  br label %106

94:                                               ; preds = %61
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %19, align 8
  %95 = load i64, i64* %12, align 8
  %96 = icmp ugt i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i8*, i8** %21, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  switch i32 %101, label %104 [
    i32 1, label %102
    i32 2, label %103
  ]

102:                                              ; preds = %97
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8** %19, align 8
  br label %104

103:                                              ; preds = %97
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8** %19, align 8
  br label %104

104:                                              ; preds = %97, %103, %102
  br label %105

105:                                              ; preds = %104, %94
  br label %106

106:                                              ; preds = %61, %105, %93, %92, %81, %63
  br label %107

107:                                              ; preds = %106, %57
  %108 = load i32*, i32** %15, align 8
  %109 = load i8*, i8** %16, align 8
  %110 = load i8*, i8** %17, align 8
  %111 = load i8*, i8** %18, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i8*, i8** %19, align 8
  %114 = load i8*, i8** %20, align 8
  %115 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i8* %109, i8* %110, i8* %111, i64 %112, i8* %113, i8* %114)
  %116 = load i64, i64* %12, align 8
  %117 = icmp ugt i64 %116, 0
  br i1 %117, label %118, label %157

118:                                              ; preds = %107
  %119 = load i32*, i32** %15, align 8
  %120 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %121 = load i64, i64* %12, align 8
  store i64 %121, i64* %22, align 8
  store i64 0, i64* %23, align 8
  br label %122

122:                                              ; preds = %144, %118
  %123 = load i64, i64* %23, align 8
  %124 = load i64, i64* %22, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %147

126:                                              ; preds = %122
  %127 = load i64, i64* %23, align 8
  %128 = urem i64 %127, 16
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i64, i64* %23, align 8
  %132 = icmp ugt i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32*, i32** %15, align 8
  %135 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %130, %126
  %137 = load i32*, i32** %15, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = load i64, i64* %23, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %136
  %145 = load i64, i64* %23, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %23, align 8
  br label %122

147:                                              ; preds = %122
  %148 = load i64, i64* %23, align 8
  %149 = load i64, i64* %12, align 8
  %150 = icmp ult i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32*, i32** %15, align 8
  %153 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %147
  %155 = load i32*, i32** %15, align 8
  %156 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %107
  %158 = load i32*, i32** %15, align 8
  %159 = call i32 @BIO_flush(i32* %158)
  ret void
}

declare dso_local i8* @lookup(i32, i32, i8*) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @BIO_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
