; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_klist.c_print_cred_verbose.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_klist.c_print_cred_verbose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32* }

@.str = private unnamed_addr constant [12 x i8] c"Server: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Client: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Ticket etype: \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"unknown-enctype(%d)\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c", kvno %d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"session keytype\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Session key: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"enctype\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Ticket length: %lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Auth time:  %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Start time: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"End time:   %s\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c" (expired)\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Renew till: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Ticket flags: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Addresses: \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"addressless\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_20__*)* @print_cred_verbose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cred_verbose(i32 %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_21__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [1024 x i8], align 16
  %13 = alloca [128 x i8], align 16
  %14 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @krb5_timeofday(i32 %15, i64* %8)
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @krb5_unparse_name(i32 %17, i32 %20, i8** %6)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %2
  %27 = call i8* @N_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 (i8*, ...) @printf(i8* %27, i8* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @krb5_unparse_name(i32 %32, i32 %35, i8** %6)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %26
  %42 = call i8* @N_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 (i8*, ...) @printf(i8* %42, i8* %43)
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @decode_Ticket(i32 %50, i64 %54, %struct.TYPE_21__* %9, i64* %10)
  %56 = load i32, i32* %3, align 4
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @krb5_enctype_to_string(i32 %56, i32 %59, i8** %11)
  store i64 %60, i64* %7, align 8
  %61 = call i8* @N_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i32 (i8*, ...) @printf(i8* %61)
  %63 = load i64, i64* %7, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %41
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @free(i8* %68)
  br label %76

70:                                               ; preds = %41
  %71 = call i8* @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i8*, ...) @printf(i8* %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = call i8* @N_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, ...) @printf(i8* %82, i32 %86)
  br label %88

88:                                               ; preds = %81, %76
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = icmp ne i64 %93, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %88
  %100 = load i32, i32* %3, align 4
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i64 @krb5_enctype_to_string(i32 %100, i32 %105, i8** %6)
  store i64 %106, i64* %7, align 8
  %107 = load i64, i64* %7, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = load i32, i32* %3, align 4
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @krb5_warn(i32 %110, i64 %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %119

113:                                              ; preds = %99
  %114 = call i8* @N_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 (i8*, ...) @printf(i8* %114, i8* %115)
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @free(i8* %117)
  br label %119

119:                                              ; preds = %113, %109
  br label %120

120:                                              ; preds = %119, %88
  %121 = call i32 @free_Ticket(%struct.TYPE_21__* %9)
  %122 = call i8* @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 (i8*, ...) @printf(i8* %122, i64 %126)
  %128 = call i8* @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i8* @printable_time_long(i64 %132)
  %134 = call i32 (i8*, ...) @printf(i8* %128, i8* %133)
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %138, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %120
  %145 = call i8* @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i8* @printable_time_long(i64 %149)
  %151 = call i32 (i8*, ...) @printf(i8* %145, i8* %150)
  br label %152

152:                                              ; preds = %144, %120
  %153 = call i8* @N_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = call i8* @printable_time_long(i64 %157)
  %159 = call i32 (i8*, ...) @printf(i8* %153, i8* %158)
  %160 = load i64, i64* %8, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp sgt i64 %160, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %152
  %167 = call i8* @N_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %168 = call i32 (i8*, ...) @printf(i8* %167)
  br label %169

169:                                              ; preds = %166, %152
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %169
  %178 = call i8* @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = call i8* @printable_time_long(i64 %182)
  %184 = call i32 (i8*, ...) @printf(i8* %178, i8* %183)
  br label %185

185:                                              ; preds = %177, %169
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @TicketFlags2int(i64 %190)
  %192 = call i32 (...) @asn1_TicketFlags_units()
  %193 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %194 = call i32 @unparse_flags(i32 %191, i32 %192, i8* %193, i32 1024)
  %195 = call i8* @N_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %196 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %197 = call i32 (i8*, ...) @printf(i8* %195, i8* %196)
  %198 = call i8* @N_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %199 = call i32 (i8*, ...) @printf(i8* %198)
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %237

205:                                              ; preds = %185
  store i64 0, i64* %5, align 8
  br label %206

206:                                              ; preds = %233, %205
  %207 = load i64, i64* %5, align 8
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ult i64 %207, %211
  br i1 %212, label %213, label %236

213:                                              ; preds = %206
  %214 = load i64, i64* %5, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  br label %218

218:                                              ; preds = %216, %213
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = load i64, i64* %5, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %226 = call i64 @krb5_print_address(i32* %224, i8* %225, i32 128, i64* %14)
  store i64 %226, i64* %7, align 8
  %227 = load i64, i64* %7, align 8
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %218
  %230 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %230)
  br label %232

232:                                              ; preds = %229, %218
  br label %233

233:                                              ; preds = %232
  %234 = load i64, i64* %5, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %5, align 8
  br label %206

236:                                              ; preds = %206
  br label %240

237:                                              ; preds = %185
  %238 = call i8* @N_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %239 = call i32 (i8*, ...) @printf(i8* %238)
  br label %240

240:                                              ; preds = %237, %236
  %241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  ret void
}

declare dso_local i32 @krb5_timeofday(i32, i64*) #1

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @N_(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @decode_Ticket(i32, i64, %struct.TYPE_21__*, i64*) #1

declare dso_local i64 @krb5_enctype_to_string(i32, i32, i8**) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i32 @free_Ticket(%struct.TYPE_21__*) #1

declare dso_local i8* @printable_time_long(i64) #1

declare dso_local i32 @unparse_flags(i32, i32, i8*, i32) #1

declare dso_local i32 @TicketFlags2int(i64) #1

declare dso_local i32 @asn1_TicketFlags_units(...) #1

declare dso_local i64 @krb5_print_address(i32*, i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
