; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_doquery.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_doquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_timeval = type { i64, i64 }

@havehost = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"***No host open, use `host' command\0A\00", align 1
@sockfd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"polling select\00", align 1
@req_pkt_size = common dso_local global i32 0, align 4
@impl_ver = common dso_local global i64 0, align 8
@IMPL_XNTPD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"***Warning changing to older implementation\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"***Warning changing the request packet size from %d to %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"***Server implementation incompatible with our own\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"***Server doesn't implement this request\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"***Server reports a format error in the received packet (shouldn't happen)\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"***Server reports data not found\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"***Permission denied\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"***Request timed out\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"***Response from server was incomplete\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"***Server returns unknown error code %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @doquery(i32 %0, i32 %1, i32 %2, i64 %3, i64 %4, i8* %5, i64* %6, i64* %7, i8** %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i8**, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [512 x i8], align 16
  %26 = alloca i32, align 4
  %27 = alloca %struct.sock_timeval, align 8
  %28 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i64 %3, i64* %16, align 8
  store i64 %4, i64* %17, align 8
  store i8* %5, i8** %18, align 8
  store i64* %6, i64** %19, align 8
  store i64* %7, i64** %20, align 8
  store i8** %8, i8*** %21, align 8
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %29 = load i32, i32* @havehost, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %11
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  br label %148

34:                                               ; preds = %11
  br label %35

35:                                               ; preds = %98, %34
  br label %36

36:                                               ; preds = %58, %35
  %37 = getelementptr inbounds %struct.sock_timeval, %struct.sock_timeval* %27, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.sock_timeval, %struct.sock_timeval* %27, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = call i32 @FD_ZERO(i32* %26)
  %40 = load i64, i64* @sockfd, align 8
  %41 = call i32 @FD_SET(i64 %40, i32* %26)
  %42 = load i64, i64* @sockfd, align 8
  %43 = add nsw i64 %42, 1
  %44 = call i32 @select(i64 %43, i32* %26, i32* null, i32* null, %struct.sock_timeval* %27)
  store i32 %44, i32* %24, align 4
  %45 = load i32, i32* %24, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = call i32 @warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  br label %148

49:                                               ; preds = %36
  %50 = load i32, i32* %24, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i64, i64* @sockfd, align 8
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %25, i64 0, i64 0
  %55 = call i32 @recv(i64 %53, i8* %54, i32 512, i32 0)
  br label %56

56:                                               ; preds = %52, %49
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %24, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %36, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* %17, align 8
  %67 = load i8*, i8** %18, align 8
  %68 = call i32 @sendrequest(i32 %62, i32 %63, i32 %64, i64 %65, i64 %66, i8* %67)
  store i32 %68, i32* %24, align 4
  %69 = load i32, i32* %24, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %24, align 4
  store i32 %72, i32* %12, align 4
  br label %148

73:                                               ; preds = %61
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i64*, i64** %19, align 8
  %77 = load i64*, i64** %20, align 8
  %78 = load i8**, i8*** %21, align 8
  %79 = load i32, i32* %23, align 4
  %80 = call i32 @getresponse(i32 %74, i32 %75, i64* %76, i64* %77, i8** %78, i32 %79)
  store i32 %80, i32* %24, align 4
  %81 = load i32, i32* %24, align 4
  %82 = icmp eq i32 %81, 132
  br i1 %82, label %83, label %103

83:                                               ; preds = %73
  %84 = load i32, i32* @req_pkt_size, align 4
  %85 = icmp ne i32 %84, 48
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  %87 = load i32, i32* @req_pkt_size, align 4
  store i32 %87, i32* %28, align 4
  %88 = load i32, i32* @req_pkt_size, align 4
  switch i32 %88, label %91 [
    i32 128, label %89
    i32 160, label %90
  ]

89:                                               ; preds = %86
  store i32 160, i32* @req_pkt_size, align 4
  br label %91

90:                                               ; preds = %86
  store i32 48, i32* @req_pkt_size, align 4
  br label %91

91:                                               ; preds = %86, %90, %89
  %92 = load i64, i64* @impl_ver, align 8
  %93 = load i64, i64* @IMPL_XNTPD, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* @stderr, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 131, i32* %12, align 4
  br label %148

98:                                               ; preds = %91
  %99 = load i32, i32* @stderr, align 4
  %100 = load i32, i32* %28, align 4
  %101 = load i32, i32* @req_pkt_size, align 4
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %100, i32 %101)
  br label %35

103:                                              ; preds = %83, %73
  %104 = load i32, i32* %24, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %146

106:                                              ; preds = %103
  %107 = load i32, i32* %24, align 4
  %108 = shl i32 1, %107
  %109 = load i32, i32* %22, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %146

112:                                              ; preds = %106
  %113 = load i32, i32* %24, align 4
  switch i32 %113, label %141 [
    i32 131, label %114
    i32 129, label %123
    i32 132, label %126
    i32 130, label %129
    i32 133, label %132
    i32 134, label %135
    i32 135, label %138
  ]

114:                                              ; preds = %112
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* @IMPL_XNTPD, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %145

120:                                              ; preds = %114
  %121 = load i32, i32* @stderr, align 4
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %145

123:                                              ; preds = %112
  %124 = load i32, i32* @stderr, align 4
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %145

126:                                              ; preds = %112
  %127 = load i32, i32* @stderr, align 4
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0))
  br label %145

129:                                              ; preds = %112
  %130 = load i32, i32* @stderr, align 4
  %131 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %145

132:                                              ; preds = %112
  %133 = load i32, i32* @stderr, align 4
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %145

135:                                              ; preds = %112
  %136 = load i32, i32* @stderr, align 4
  %137 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %145

138:                                              ; preds = %112
  %139 = load i32, i32* @stderr, align 4
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  br label %145

141:                                              ; preds = %112
  %142 = load i32, i32* @stderr, align 4
  %143 = load i32, i32* %24, align 4
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %142, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %141, %138, %135, %132, %129, %126, %123, %120, %119
  br label %146

146:                                              ; preds = %145, %106, %103
  %147 = load i32, i32* %24, align 4
  store i32 %147, i32* %12, align 4
  br label %148

148:                                              ; preds = %146, %95, %71, %47, %31
  %149 = load i32, i32* %12, align 4
  ret i32 %149
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.sock_timeval*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @recv(i64, i8*, i32, i32) #1

declare dso_local i32 @sendrequest(i32, i32, i32, i64, i64, i8*) #1

declare dso_local i32 @getresponse(i32, i32, i64*, i64*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
