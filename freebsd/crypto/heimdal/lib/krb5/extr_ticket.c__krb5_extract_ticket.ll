; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_ticket.c__krb5_extract_ticket.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_ticket.c__krb5_extract_ticket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_44__ = type { i64, i64 }
%struct.TYPE_43__ = type { %struct.TYPE_42__, %struct.TYPE_56__ }
%struct.TYPE_42__ = type { i64, i64*, i64*, i64, %struct.TYPE_55__, %struct.TYPE_57__, i32*, i64, i32, i32 }
%struct.TYPE_55__ = type { %struct.TYPE_54__, i32 }
%struct.TYPE_54__ = type { i32, i32 }
%struct.TYPE_57__ = type { i64 }
%struct.TYPE_56__ = type { i32, i32, i32 }
%struct.TYPE_45__ = type { i8*, i8*, %struct.TYPE_53__, %struct.TYPE_52__, %struct.TYPE_51__, %struct.TYPE_49__, %struct.TYPE_48__, %struct.TYPE_46__, %struct.TYPE_50__ }
%struct.TYPE_53__ = type { i32*, i64 }
%struct.TYPE_52__ = type { i64, i32 }
%struct.TYPE_51__ = type { i32*, i32 }
%struct.TYPE_49__ = type { %struct.TYPE_57__ }
%struct.TYPE_48__ = type { i32*, i64 }
%struct.TYPE_46__ = type { i64, i64, i64, i64 }
%struct.TYPE_50__ = type { %struct.TYPE_47__, i32 }
%struct.TYPE_47__ = type { i32*, i64 }

@EXTRACT_TICKET_ALLOW_CNAME_MISMATCH = common dso_local global i32 0, align 4
@EXTRACT_TICKET_ALLOW_SERVER_MISMATCH = common dso_local global i32 0, align 4
@EXTRACT_TICKET_MATCH_REALM = common dso_local global i32 0, align 4
@KRB5KRB_AP_ERR_MODIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EXTRACT_TICKET_TIMESYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"libdefaults\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"kdc_timesync\00", align 1
@KRB5KRB_AP_ERR_SKEW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"time skew (%d) larger than max (%d)\00", align 1
@Ticket = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"internal error in ASN.1 encoder\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_krb5_extract_ticket(%struct.TYPE_44__* %0, %struct.TYPE_43__* %1, %struct.TYPE_45__* %2, i32* %3, i32 %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 (%struct.TYPE_44__*, i32*, i32, i32, %struct.TYPE_43__*)* %9, i32 %10) #0 {
  %12 = alloca %struct.TYPE_44__*, align 8
  %13 = alloca %struct.TYPE_43__*, align 8
  %14 = alloca %struct.TYPE_45__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32 (%struct.TYPE_44__*, i32*, i32, i32, %struct.TYPE_43__*)*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  store %struct.TYPE_44__* %0, %struct.TYPE_44__** %12, align 8
  store %struct.TYPE_43__* %1, %struct.TYPE_43__** %13, align 8
  store %struct.TYPE_45__* %2, %struct.TYPE_45__** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 (%struct.TYPE_44__*, i32*, i32, i32, %struct.TYPE_43__*)* %9, i32 (%struct.TYPE_44__*, i32*, i32, i32, %struct.TYPE_43__*)** %21, align 8
  store i32 %10, i32* %22, align 4
  store i64 0, i64* %25, align 8
  %30 = load i32 (%struct.TYPE_44__*, i32*, i32, i32, %struct.TYPE_43__*)*, i32 (%struct.TYPE_44__*, i32*, i32, i32, %struct.TYPE_43__*)** %21, align 8
  %31 = icmp eq i32 (%struct.TYPE_44__*, i32*, i32, i32, %struct.TYPE_43__*)* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %11
  store i32 (%struct.TYPE_44__*, i32*, i32, i32, %struct.TYPE_43__*)* @decrypt_tkt, i32 (%struct.TYPE_44__*, i32*, i32, i32, %struct.TYPE_43__*)** %21, align 8
  br label %33

33:                                               ; preds = %32, %11
  %34 = load i32 (%struct.TYPE_44__*, i32*, i32, i32, %struct.TYPE_43__*)*, i32 (%struct.TYPE_44__*, i32*, i32, i32, %struct.TYPE_43__*)** %21, align 8
  %35 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %22, align 4
  %39 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %40 = call i32 %34(%struct.TYPE_44__* %35, i32* %36, i32 %37, i32 %38, %struct.TYPE_43__* %39)
  store i32 %40, i32* %23, align 4
  %41 = load i32, i32* %23, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %471

44:                                               ; preds = %33
  %45 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %49, i32 0, i32 8
  %51 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %58, i32 0, i32 8
  %60 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 8
  %61 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %61, i32 0, i32 8
  %63 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @krb5_data_copy(%struct.TYPE_47__* %63, i32 %69, i32 %75)
  store i32 %76, i32* %23, align 4
  %77 = load i32, i32* %23, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %44
  %80 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %81 = call i32 @krb5_clear_error_message(%struct.TYPE_44__* %80)
  br label %471

82:                                               ; preds = %44
  %83 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %84 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @_krb5_principalname2krb5_principal(%struct.TYPE_44__* %83, i8** %24, i32 %87, i32 %91)
  store i32 %92, i32* %23, align 4
  %93 = load i32, i32* %23, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %82
  br label %471

96:                                               ; preds = %82
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* @EXTRACT_TICKET_ALLOW_CNAME_MISMATCH, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %96
  %102 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %103 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %104 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** %24, align 8
  %108 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %108, i32 0, i32 8
  %110 = call i32 @check_client_referral(%struct.TYPE_44__* %102, %struct.TYPE_43__* %103, i8* %106, i8* %107, %struct.TYPE_50__* %109)
  store i32 %110, i32* %23, align 4
  %111 = load i32, i32* %23, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %101
  %114 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %115 = load i8*, i8** %24, align 8
  %116 = call i32 @krb5_free_principal(%struct.TYPE_44__* %114, i8* %115)
  br label %471

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117, %96
  %119 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %120 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @krb5_free_principal(%struct.TYPE_44__* %119, i8* %122)
  %124 = load i8*, i8** %24, align 8
  %125 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %128 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @_krb5_principalname2krb5_principal(%struct.TYPE_44__* %127, i8** %24, i32 %131, i32 %135)
  store i32 %136, i32* %23, align 4
  %137 = load i32, i32* %23, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %118
  br label %471

140:                                              ; preds = %118
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* @EXTRACT_TICKET_ALLOW_SERVER_MISMATCH, align 4
  %143 = and i32 %141, %142
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %163

145:                                              ; preds = %140
  %146 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %147 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %148 = load i32, i32* %20, align 4
  %149 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load i8*, i8** %24, align 8
  %153 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %153, i32 0, i32 8
  %155 = call i32 @check_server_referral(%struct.TYPE_44__* %146, %struct.TYPE_43__* %147, i32 %148, i8* %151, i8* %152, %struct.TYPE_50__* %154)
  store i32 %155, i32* %23, align 4
  %156 = load i32, i32* %23, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %145
  %159 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %160 = load i8*, i8** %24, align 8
  %161 = call i32 @krb5_free_principal(%struct.TYPE_44__* %159, i8* %160)
  br label %471

162:                                              ; preds = %145
  br label %163

163:                                              ; preds = %162, %140
  %164 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %165 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @krb5_free_principal(%struct.TYPE_44__* %164, i8* %167)
  %169 = load i8*, i8** %24, align 8
  %170 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  %172 = load i32, i32* %20, align 4
  %173 = load i32, i32* @EXTRACT_TICKET_MATCH_REALM, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %207

176:                                              ; preds = %163
  %177 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %178 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = call i8* @krb5_principal_get_realm(%struct.TYPE_44__* %177, i8* %180)
  store i8* %181, i8** %28, align 8
  %182 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %183 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i8* @krb5_principal_get_realm(%struct.TYPE_44__* %182, i8* %185)
  store i8* %186, i8** %29, align 8
  %187 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %188, i32 0, i32 8
  %190 = load i32, i32* %189, align 8
  %191 = load i8*, i8** %28, align 8
  %192 = call i64 @strcmp(i32 %190, i8* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %202, label %194

194:                                              ; preds = %176
  %195 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 8
  %199 = load i8*, i8** %29, align 8
  %200 = call i64 @strcmp(i32 %198, i8* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %194, %176
  %203 = load i32, i32* @KRB5KRB_AP_ERR_MODIFIED, align 4
  store i32 %203, i32* %23, align 4
  %204 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %205 = call i32 @krb5_clear_error_message(%struct.TYPE_44__* %204)
  br label %471

206:                                              ; preds = %194
  br label %207

207:                                              ; preds = %206, %163
  %208 = load i32, i32* %19, align 4
  %209 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %210, i32 0, i32 7
  %212 = load i64, i64* %211, align 8
  %213 = trunc i64 %212 to i32
  %214 = icmp ne i32 %208, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %207
  %216 = load i32, i32* @KRB5KRB_AP_ERR_MODIFIED, align 4
  store i32 %216, i32* %23, align 4
  %217 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %218 = load i32, i32* %23, align 4
  %219 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %220 = call i32 (%struct.TYPE_44__*, i32, i32, ...) @krb5_set_error_message(%struct.TYPE_44__* %217, i32 %218, i32 %219)
  br label %471

221:                                              ; preds = %207
  %222 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %223 = call i32 @krb5_timeofday(%struct.TYPE_44__* %222, i64* %27)
  %224 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %225, i32 0, i32 5
  %227 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %255

230:                                              ; preds = %221
  %231 = load i32, i32* %20, align 4
  %232 = load i32, i32* @EXTRACT_TICKET_TIMESYNC, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %255

235:                                              ; preds = %230
  %236 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %255

240:                                              ; preds = %235
  %241 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %242 = call i64 @krb5_config_get_bool(%struct.TYPE_44__* %241, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %255

244:                                              ; preds = %240
  %245 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* %27, align 8
  %250 = sub nsw i64 %248, %249
  %251 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %251, i32 0, i32 0
  store i64 %250, i64* %252, align 8
  %253 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %254 = call i32 @krb5_timeofday(%struct.TYPE_44__* %253, i64* %27)
  br label %255

255:                                              ; preds = %244, %240, %235, %230, %221
  %256 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %257, i32 0, i32 1
  %259 = load i64*, i64** %258, align 8
  %260 = icmp ne i64* %259, null
  br i1 %260, label %261, label %267

261:                                              ; preds = %255
  %262 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %263, i32 0, i32 1
  %265 = load i64*, i64** %264, align 8
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %26, align 8
  br label %272

267:                                              ; preds = %255
  %268 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %269 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %26, align 8
  br label %272

272:                                              ; preds = %267, %261
  %273 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %273, i32 0, i32 7
  %275 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %301

278:                                              ; preds = %272
  %279 = load i64, i64* %26, align 8
  %280 = load i64, i64* %27, align 8
  %281 = sub nsw i64 %279, %280
  %282 = call i64 @abs(i64 %281)
  %283 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %284 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = icmp sgt i64 %282, %285
  br i1 %286, label %287, label %301

287:                                              ; preds = %278
  %288 = load i32, i32* @KRB5KRB_AP_ERR_SKEW, align 4
  store i32 %288, i32* %23, align 4
  %289 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %290 = load i32, i32* %23, align 4
  %291 = call i32 @N_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %292 = load i64, i64* %26, align 8
  %293 = load i64, i64* %27, align 8
  %294 = sub nsw i64 %292, %293
  %295 = call i64 @abs(i64 %294)
  %296 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %297 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = trunc i64 %298 to i32
  %300 = call i32 (%struct.TYPE_44__*, i32, i32, ...) @krb5_set_error_message(%struct.TYPE_44__* %289, i32 %290, i32 %291, i64 %295, i32 %299)
  br label %471

301:                                              ; preds = %278, %272
  %302 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %303 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %302, i32 0, i32 7
  %304 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %318

307:                                              ; preds = %301
  %308 = load i64, i64* %26, align 8
  %309 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %310 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %309, i32 0, i32 7
  %311 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %308, %312
  br i1 %313, label %314, label %318

314:                                              ; preds = %307
  %315 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %316 = call i32 @krb5_clear_error_message(%struct.TYPE_44__* %315)
  %317 = load i32, i32* @KRB5KRB_AP_ERR_MODIFIED, align 4
  store i32 %317, i32* %23, align 4
  br label %471

318:                                              ; preds = %307, %301
  %319 = load i64, i64* %26, align 8
  %320 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %321 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %320, i32 0, i32 7
  %322 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %321, i32 0, i32 0
  store i64 %319, i64* %322, align 8
  %323 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %324 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %324, i32 0, i32 2
  %326 = load i64*, i64** %325, align 8
  %327 = icmp ne i64* %326, null
  br i1 %327, label %328, label %334

328:                                              ; preds = %318
  %329 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %330 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %330, i32 0, i32 2
  %332 = load i64*, i64** %331, align 8
  %333 = load i64, i64* %332, align 8
  store i64 %333, i64* %26, align 8
  br label %335

334:                                              ; preds = %318
  store i64 0, i64* %26, align 8
  br label %335

335:                                              ; preds = %334, %328
  %336 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %337 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %336, i32 0, i32 7
  %338 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %352

341:                                              ; preds = %335
  %342 = load i64, i64* %26, align 8
  %343 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %344 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %343, i32 0, i32 7
  %345 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = icmp sgt i64 %342, %346
  br i1 %347, label %348, label %352

348:                                              ; preds = %341
  %349 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %350 = call i32 @krb5_clear_error_message(%struct.TYPE_44__* %349)
  %351 = load i32, i32* @KRB5KRB_AP_ERR_MODIFIED, align 4
  store i32 %351, i32* %23, align 4
  br label %471

352:                                              ; preds = %341, %335
  %353 = load i64, i64* %26, align 8
  %354 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %355 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %354, i32 0, i32 7
  %356 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %355, i32 0, i32 1
  store i64 %353, i64* %356, align 8
  %357 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %358 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %362 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %361, i32 0, i32 7
  %363 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %362, i32 0, i32 2
  store i64 %360, i64* %363, align 8
  %364 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %365 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %364, i32 0, i32 7
  %366 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %365, i32 0, i32 3
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %383

369:                                              ; preds = %352
  %370 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %371 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %371, i32 0, i32 3
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %375 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %374, i32 0, i32 7
  %376 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %375, i32 0, i32 3
  %377 = load i64, i64* %376, align 8
  %378 = icmp sgt i64 %373, %377
  br i1 %378, label %379, label %383

379:                                              ; preds = %369
  %380 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %381 = call i32 @krb5_clear_error_message(%struct.TYPE_44__* %380)
  %382 = load i32, i32* @KRB5KRB_AP_ERR_MODIFIED, align 4
  store i32 %382, i32* %23, align 4
  br label %471

383:                                              ; preds = %369, %352
  %384 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %385 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %385, i32 0, i32 3
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %389 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %388, i32 0, i32 7
  %390 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %389, i32 0, i32 3
  store i64 %387, i64* %390, align 8
  %391 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %392 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %392, i32 0, i32 6
  %394 = load i32*, i32** %393, align 8
  %395 = icmp ne i32* %394, null
  br i1 %395, label %396, label %405

396:                                              ; preds = %383
  %397 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %398 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %399 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %399, i32 0, i32 6
  %401 = load i32*, i32** %400, align 8
  %402 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %403 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %402, i32 0, i32 6
  %404 = call i32 @krb5_copy_addresses(%struct.TYPE_44__* %397, i32* %401, %struct.TYPE_48__* %403)
  br label %422

405:                                              ; preds = %383
  %406 = load i32*, i32** %18, align 8
  %407 = icmp ne i32* %406, null
  br i1 %407, label %408, label %414

408:                                              ; preds = %405
  %409 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %410 = load i32*, i32** %18, align 8
  %411 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %412 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %411, i32 0, i32 6
  %413 = call i32 @krb5_copy_addresses(%struct.TYPE_44__* %409, i32* %410, %struct.TYPE_48__* %412)
  br label %421

414:                                              ; preds = %405
  %415 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %416 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %415, i32 0, i32 6
  %417 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %416, i32 0, i32 1
  store i64 0, i64* %417, align 8
  %418 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %419 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %418, i32 0, i32 6
  %420 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %419, i32 0, i32 0
  store i32* null, i32** %420, align 8
  br label %421

421:                                              ; preds = %414, %408
  br label %422

422:                                              ; preds = %421, %396
  %423 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %424 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %423, i32 0, i32 5
  %425 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %424, i32 0, i32 0
  %426 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %427 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %427, i32 0, i32 5
  %429 = bitcast %struct.TYPE_57__* %425 to i8*
  %430 = bitcast %struct.TYPE_57__* %428 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %429, i8* align 8 %430, i64 8, i1 false)
  %431 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %432 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %431, i32 0, i32 4
  %433 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %432, i32 0, i32 1
  store i32 0, i32* %433, align 8
  %434 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %435 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %434, i32 0, i32 4
  %436 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %435, i32 0, i32 0
  store i32* null, i32** %436, align 8
  %437 = load i32, i32* @Ticket, align 4
  %438 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %439 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %438, i32 0, i32 3
  %440 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 8
  %442 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %443 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %442, i32 0, i32 3
  %444 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %447 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %447, i32 0, i32 0
  %449 = load i32, i32* %23, align 4
  %450 = call i32 @ASN1_MALLOC_ENCODE(i32 %437, i32 %441, i64 %445, i32* %448, i64* %25, i32 %449)
  %451 = load i32, i32* %23, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %422
  br label %471

454:                                              ; preds = %422
  %455 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %456 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %455, i32 0, i32 3
  %457 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = load i64, i64* %25, align 8
  %460 = icmp ne i64 %458, %459
  br i1 %460, label %461, label %464

461:                                              ; preds = %454
  %462 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %463 = call i32 @krb5_abortx(%struct.TYPE_44__* %462, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %464

464:                                              ; preds = %461, %454
  %465 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %466 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %465, i32 0, i32 2
  %467 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %466, i32 0, i32 1
  store i64 0, i64* %467, align 8
  %468 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %469 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %468, i32 0, i32 2
  %470 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %469, i32 0, i32 0
  store i32* null, i32** %470, align 8
  br label %471

471:                                              ; preds = %464, %453, %379, %348, %314, %287, %215, %202, %158, %139, %113, %95, %79, %43
  %472 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %473 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %473, i32 0, i32 4
  %475 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %479 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %479, i32 0, i32 4
  %481 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = call i32 @memset(i32 %477, i32 0, i32 %483)
  %485 = load i32, i32* %23, align 4
  ret i32 %485
}

declare dso_local i32 @decrypt_tkt(%struct.TYPE_44__*, i32*, i32, i32, %struct.TYPE_43__*) #1

declare dso_local i32 @krb5_data_copy(%struct.TYPE_47__*, i32, i32) #1

declare dso_local i32 @krb5_clear_error_message(%struct.TYPE_44__*) #1

declare dso_local i32 @_krb5_principalname2krb5_principal(%struct.TYPE_44__*, i8**, i32, i32) #1

declare dso_local i32 @check_client_referral(%struct.TYPE_44__*, %struct.TYPE_43__*, i8*, i8*, %struct.TYPE_50__*) #1

declare dso_local i32 @krb5_free_principal(%struct.TYPE_44__*, i8*) #1

declare dso_local i32 @check_server_referral(%struct.TYPE_44__*, %struct.TYPE_43__*, i32, i8*, i8*, %struct.TYPE_50__*) #1

declare dso_local i8* @krb5_principal_get_realm(%struct.TYPE_44__*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @krb5_set_error_message(%struct.TYPE_44__*, i32, i32, ...) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @krb5_timeofday(%struct.TYPE_44__*, i64*) #1

declare dso_local i64 @krb5_config_get_bool(%struct.TYPE_44__*, i32*, i8*, i8*, i32*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @krb5_copy_addresses(%struct.TYPE_44__*, i32*, %struct.TYPE_48__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ASN1_MALLOC_ENCODE(i32, i32, i64, i32*, i64*, i32) #1

declare dso_local i32 @krb5_abortx(%struct.TYPE_44__*, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
