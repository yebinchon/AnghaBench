; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_wks_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_wks_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent = type { i64 }
%struct.servent = type { i64 }

@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\09\0A \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@LDNS_WIREPARSE_ERR_SYNTAX = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_wks_buf(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [50 x i8], align 16
  %11 = alloca [50 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.protoent*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.servent*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = call i32 @sldns_buffer_init_frm_data(i32* %12, i32* %17, i32 %19)
  %21 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %21, align 16
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %26, i32* %4, align 4
  br label %175

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %169, %27
  %29 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %30 = call i64 @sldns_bget_token(i32* %12, i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 50)
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %170

32:                                               ; preds = %28
  %33 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %34 = call i32 @ldns_tolower_str(i8* %33)
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %74, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %39 = call %struct.protoent* @getprotobyname(i8* %38)
  store %struct.protoent* %39, %struct.protoent** %13, align 8
  store i32 1, i32* %9, align 4
  %40 = load %struct.protoent*, %struct.protoent** %13, align 8
  %41 = icmp ne %struct.protoent* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.protoent*, %struct.protoent** %13, align 8
  %44 = getelementptr inbounds %struct.protoent, %struct.protoent* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %46, i32* %48, align 4
  br label %70

49:                                               ; preds = %37
  %50 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %51 = call i64 @strcasecmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 6, i32* %55, align 4
  br label %69

56:                                               ; preds = %49
  %57 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %58 = call i64 @strcasecmp(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 17, i32* %62, align 4
  br label %68

63:                                               ; preds = %56
  %64 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %65 = call i32 @atoi(i8* %64)
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %60
  br label %69

69:                                               ; preds = %68, %53
  br label %70

70:                                               ; preds = %69, %42
  %71 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %72 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %73 = call i32 @strlcpy(i8* %71, i8* %72, i32 50)
  br label %169

74:                                               ; preds = %32
  %75 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %76 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %77 = call %struct.servent* @getservbyname(i8* %75, i8* %76)
  store %struct.servent* %77, %struct.servent** %15, align 8
  %78 = load %struct.servent*, %struct.servent** %15, align 8
  %79 = icmp ne %struct.servent* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.servent*, %struct.servent** %15, align 8
  %82 = getelementptr inbounds %struct.servent, %struct.servent* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i64 @ntohs(i32 %84)
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %14, align 4
  br label %117

87:                                               ; preds = %74
  %88 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %89 = call i64 @strcasecmp(i8* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 53, i32* %14, align 4
  br label %116

92:                                               ; preds = %87
  %93 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %94 = call i32 @atoi(i8* %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX, align 4
  %103 = call i32 @sldns_buffer_position(i32* %12)
  %104 = call i32 @RET_ERR(i32 %102, i32 %103)
  store i32 %104, i32* %4, align 4
  br label %175

105:                                              ; preds = %97, %92
  %106 = load i32, i32* %14, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %14, align 4
  %110 = icmp sgt i32 %109, 65535
  br i1 %110, label %111, label %115

111:                                              ; preds = %108, %105
  %112 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX, align 4
  %113 = call i32 @sldns_buffer_position(i32* %12)
  %114 = call i32 @RET_ERR(i32 %112, i32 %113)
  store i32 %114, i32* %4, align 4
  br label %175

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115, %91
  br label %117

117:                                              ; preds = %116, %80
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %14, align 4
  %120 = sdiv i32 %119, 8
  %121 = add nsw i32 1, %120
  %122 = add nsw i32 %121, 1
  %123 = icmp slt i32 %118, %122
  br i1 %123, label %124, label %156

124:                                              ; preds = %117
  %125 = load i64*, i64** %7, align 8
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = udiv i64 %128, 8
  %130 = add i64 1, %129
  %131 = add i64 %130, 1
  %132 = icmp ult i64 %126, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %124
  %134 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  %135 = call i32 @sldns_buffer_position(i32* %12)
  %136 = call i32 @RET_ERR(i32 %134, i32 %135)
  store i32 %136, i32* %4, align 4
  br label %175

137:                                              ; preds = %124
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = udiv i64 %143, 8
  %145 = add i64 1, %144
  %146 = add i64 %145, 1
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = sub i64 %146, %148
  %150 = trunc i64 %149 to i32
  %151 = call i32 @memset(i32* %141, i32 0, i32 %150)
  %152 = load i32, i32* %14, align 4
  %153 = sdiv i32 %152, 8
  %154 = add nsw i32 1, %153
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %137, %117
  %157 = load i32, i32* %14, align 4
  %158 = srem i32 %157, 8
  %159 = sub nsw i32 7, %158
  %160 = shl i32 1, %159
  %161 = load i32*, i32** %6, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sdiv i32 %162, 8
  %164 = add nsw i32 1, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %161, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %160
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %156, %70
  br label %28

170:                                              ; preds = %28
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = load i64*, i64** %7, align 8
  store i64 %172, i64* %173, align 8
  %174 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %170, %133, %111, %101, %25
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @sldns_buffer_init_frm_data(i32*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @sldns_bget_token(i32*, i8*, i8*, i32) #1

declare dso_local i32 @ldns_tolower_str(i8*) #1

declare dso_local %struct.protoent* @getprotobyname(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @RET_ERR(i32, i32) #1

declare dso_local i32 @sldns_buffer_position(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
