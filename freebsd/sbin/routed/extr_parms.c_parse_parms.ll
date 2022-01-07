; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_parms.c_parse_parms.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_parms.c_parse_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgate = type { i32, i8*, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.tgate*, %struct.TYPE_2__*, i8*, i8*, i8*, %struct.tgate*, %struct.tgate* }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.parm = type { i32, i8*, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.parm*, %struct.TYPE_2__*, i8*, i8*, i8*, %struct.parm*, %struct.parm* }
%struct.intnet = type { i32, i8*, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.intnet*, %struct.TYPE_2__*, i8*, i8*, i8*, %struct.intnet*, %struct.intnet* }
%struct.r1net = type { i32, i8*, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.r1net*, %struct.TYPE_2__*, i8*, i8*, i8*, %struct.r1net*, %struct.r1net* }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"subnet=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"parse_parms subnet\00", align 1
@HOPCNT_INFINITY = common dso_local global i32 0, align 4
@HOST_MASK = common dso_local global i32 0, align 4
@RIP_DEFAULT = common dso_local global i64 0, align 8
@intnets = common dso_local global %struct.tgate* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"ripv1_mask=\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"parse_parms ripv1_mask\00", align 1
@r1nets = common dso_local global %struct.tgate* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c" ,\0A\0D\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"= #,\0A\0D\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" #,\0A\0D\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"if=\00", align 1
@IF_NAME_LEN = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"addr=\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"passwd=\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"no passwd\00", align 1
@RIP_AUTH_PW = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"md5_passwd=\00", align 1
@RIP_AUTH_MD5 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"no_ag\00", align 1
@IS_NO_AG = common dso_local global i32 0, align 4
@IS_NO_SUPER_AG = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"no_super_ag\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"no_rip_out\00", align 1
@IS_NO_RIP_OUT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"no_ripv1_in\00", align 1
@IS_NO_RIPV1_IN = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [12 x i8] c"no_ripv2_in\00", align 1
@IS_NO_RIPV2_IN = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"ripv2_out\00", align 1
@IS_NO_RIPV2_OUT = common dso_local global i32 0, align 4
@IS_NO_RIPV1_OUT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"ripv2\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"no_rip\00", align 1
@IS_PM_RDISC = common dso_local global i32 0, align 4
@IS_NO_RIP = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"no_rip_mcast\00", align 1
@IS_NO_RIP_MCAST = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"no_rdisc\00", align 1
@GROUP_IS_SOL_OUT = common dso_local global i32 0, align 4
@GROUP_IS_ADV_OUT = common dso_local global i32 0, align 4
@IS_NO_RDISC = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [11 x i8] c"no_solicit\00", align 1
@IS_NO_SOL_OUT = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [13 x i8] c"send_solicit\00", align 1
@IS_SOL_OUT = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [13 x i8] c"no_rdisc_adv\00", align 1
@IS_NO_ADV_OUT = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [10 x i8] c"rdisc_adv\00", align 1
@IS_ADV_OUT = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [12 x i8] c"bcast_rdisc\00", align 1
@IS_BCAST_RDISC = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@IS_PASSIVE = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [12 x i8] c"rdisc_pref=\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"pm_rdisc\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"rdisc_interval=\00", align 1
@MinMaxAdvertiseInterval = common dso_local global i32 0, align 4
@MaxMaxAdvertiseInterval = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [14 x i8] c"fake_default=\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"adj_inmetric=\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"adj_outmetric=\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"trust_gateway=\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"parse_parmstrust_gateway\00", align 1
@MAX_TGATE_NETS = common dso_local global i32 0, align 4
@tgates = common dso_local global %struct.tgate* null, align 8
@IS_DISTRUST = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [12 x i8] c"redirect_ok\00", align 1
@IS_REDIRECT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_parms(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.parm, align 8
  %7 = alloca %struct.intnet*, align 8
  %8 = alloca %struct.r1net*, align 8
  %9 = alloca %struct.tgate*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %13, align 8
  %23 = load i32, i32* @BUFSIZ, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %18, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %19, align 8
  %27 = load i32, i32* @BUFSIZ, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %20, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strncasecmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %126, label %33

33:                                               ; preds = %2
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 7
  store i8* %35, i8** %15, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %126

39:                                               ; preds = %33
  %40 = trunc i64 %24 to i32
  %41 = call i64 @parse_quote(i8** %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %12, i8* %26, i32 %40)
  %42 = icmp sgt i64 0, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = call i8* @bad_str(i8* %44)
  store i8* %45, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

46:                                               ; preds = %39
  %47 = call i64 @rtmalloc(i32 136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %48 = inttoptr i64 %47 to %struct.intnet*
  store %struct.intnet* %48, %struct.intnet** %7, align 8
  %49 = load %struct.intnet*, %struct.intnet** %7, align 8
  %50 = getelementptr inbounds %struct.intnet, %struct.intnet* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load i8, i8* %12, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 44
  br i1 %53, label %54, label %83

54:                                               ; preds = %46
  %55 = load i8*, i8** %15, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = call i64 @strtol(i8* %56, i8** %16, i32 0)
  %58 = trunc i64 %57 to i32
  %59 = load %struct.intnet*, %struct.intnet** %7, align 8
  %60 = getelementptr inbounds %struct.intnet, %struct.intnet* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %54
  %66 = load %struct.intnet*, %struct.intnet** %7, align 8
  %67 = getelementptr inbounds %struct.intnet, %struct.intnet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = load %struct.intnet*, %struct.intnet** %7, align 8
  %72 = getelementptr inbounds %struct.intnet, %struct.intnet* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @HOPCNT_INFINITY, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70, %65, %54
  %77 = load %struct.intnet*, %struct.intnet** %7, align 8
  %78 = bitcast %struct.intnet* %77 to %struct.tgate*
  %79 = call i32 @free(%struct.tgate* %78)
  %80 = load i8*, i8** %4, align 8
  %81 = call i8* @bad_str(i8* %80)
  store i8* %81, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %46
  %84 = load %struct.intnet*, %struct.intnet** %7, align 8
  %85 = getelementptr inbounds %struct.intnet, %struct.intnet* %84, i32 0, i32 1
  %86 = load %struct.intnet*, %struct.intnet** %7, align 8
  %87 = getelementptr inbounds %struct.intnet, %struct.intnet* %86, i32 0, i32 2
  %88 = call i32 @getnet(i8* %26, i8** %85, i8** %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %83
  %91 = load %struct.intnet*, %struct.intnet** %7, align 8
  %92 = getelementptr inbounds %struct.intnet, %struct.intnet* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* @HOST_MASK, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = icmp eq i8* %93, %96
  br i1 %97, label %105, label %98

98:                                               ; preds = %90
  %99 = load %struct.intnet*, %struct.intnet** %7, align 8
  %100 = getelementptr inbounds %struct.intnet, %struct.intnet* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load i64, i64* @RIP_DEFAULT, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = icmp eq i8* %101, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %98, %90, %83
  %106 = load %struct.intnet*, %struct.intnet** %7, align 8
  %107 = bitcast %struct.intnet* %106 to %struct.tgate*
  %108 = call i32 @free(%struct.tgate* %107)
  %109 = load i8*, i8** %4, align 8
  %110 = call i8* @bad_str(i8* %109)
  store i8* %110, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

111:                                              ; preds = %98
  %112 = load %struct.intnet*, %struct.intnet** %7, align 8
  %113 = getelementptr inbounds %struct.intnet, %struct.intnet* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = ptrtoint i8* %114 to i64
  %116 = call i64 @htonl(i64 %115)
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.intnet*, %struct.intnet** %7, align 8
  %119 = getelementptr inbounds %struct.intnet, %struct.intnet* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  %120 = load %struct.tgate*, %struct.tgate** @intnets, align 8
  %121 = bitcast %struct.tgate* %120 to %struct.intnet*
  %122 = load %struct.intnet*, %struct.intnet** %7, align 8
  %123 = getelementptr inbounds %struct.intnet, %struct.intnet* %122, i32 0, i32 19
  store %struct.intnet* %121, %struct.intnet** %123, align 8
  %124 = load %struct.intnet*, %struct.intnet** %7, align 8
  %125 = bitcast %struct.intnet* %124 to %struct.tgate*
  store %struct.tgate* %125, %struct.tgate** @intnets, align 8
  store i8* null, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

126:                                              ; preds = %33, %2
  %127 = load i8*, i8** %4, align 8
  %128 = call i32 @strncasecmp(i8* %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %209, label %130

130:                                              ; preds = %126
  %131 = load i8*, i8** %4, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 11
  store i8* %132, i8** %15, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %209

136:                                              ; preds = %130
  %137 = trunc i64 %24 to i32
  %138 = call i64 @parse_quote(i8** %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %12, i8* %26, i32 %137)
  %139 = icmp sgt i64 0, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i8, i8* %12, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140, %136
  %145 = load i8*, i8** %4, align 8
  %146 = call i8* @bad_str(i8* %145)
  store i8* %146, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

147:                                              ; preds = %140
  %148 = load i8*, i8** %15, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = call i64 @strtol(i8* %149, i8** %16, i32 0)
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %21, align 4
  %152 = icmp sle i32 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %147
  %154 = load i32, i32* %21, align 4
  %155 = icmp sgt i32 %154, 32
  br i1 %155, label %161, label %156

156:                                              ; preds = %153
  %157 = load i8*, i8** %16, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156, %153, %147
  %162 = load i8*, i8** %4, align 8
  %163 = call i8* @bad_str(i8* %162)
  store i8* %163, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

164:                                              ; preds = %156
  %165 = call i64 @rtmalloc(i32 136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %166 = inttoptr i64 %165 to %struct.r1net*
  store %struct.r1net* %166, %struct.r1net** %8, align 8
  %167 = load i32, i32* @HOST_MASK, align 4
  %168 = load i32, i32* %21, align 4
  %169 = sub nsw i32 32, %168
  %170 = shl i32 %167, %169
  %171 = load %struct.r1net*, %struct.r1net** %8, align 8
  %172 = getelementptr inbounds %struct.r1net, %struct.r1net* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load %struct.r1net*, %struct.r1net** %8, align 8
  %174 = getelementptr inbounds %struct.r1net, %struct.r1net* %173, i32 0, i32 4
  %175 = load %struct.r1net*, %struct.r1net** %8, align 8
  %176 = getelementptr inbounds %struct.r1net, %struct.r1net* %175, i32 0, i32 5
  %177 = call i32 @getnet(i8* %26, i8** %174, i8** %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %196

179:                                              ; preds = %164
  %180 = load %struct.r1net*, %struct.r1net** %8, align 8
  %181 = getelementptr inbounds %struct.r1net, %struct.r1net* %180, i32 0, i32 4
  %182 = load i8*, i8** %181, align 8
  %183 = load i64, i64* @RIP_DEFAULT, align 8
  %184 = inttoptr i64 %183 to i8*
  %185 = icmp eq i8* %182, %184
  br i1 %185, label %196, label %186

186:                                              ; preds = %179
  %187 = load %struct.r1net*, %struct.r1net** %8, align 8
  %188 = getelementptr inbounds %struct.r1net, %struct.r1net* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = inttoptr i64 %190 to i8*
  %192 = load %struct.r1net*, %struct.r1net** %8, align 8
  %193 = getelementptr inbounds %struct.r1net, %struct.r1net* %192, i32 0, i32 5
  %194 = load i8*, i8** %193, align 8
  %195 = icmp ugt i8* %191, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %186, %179, %164
  %197 = load %struct.r1net*, %struct.r1net** %8, align 8
  %198 = bitcast %struct.r1net* %197 to %struct.tgate*
  %199 = call i32 @free(%struct.tgate* %198)
  %200 = load i8*, i8** %4, align 8
  %201 = call i8* @bad_str(i8* %200)
  store i8* %201, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

202:                                              ; preds = %186
  %203 = load %struct.tgate*, %struct.tgate** @r1nets, align 8
  %204 = bitcast %struct.tgate* %203 to %struct.r1net*
  %205 = load %struct.r1net*, %struct.r1net** %8, align 8
  %206 = getelementptr inbounds %struct.r1net, %struct.r1net* %205, i32 0, i32 18
  store %struct.r1net* %204, %struct.r1net** %206, align 8
  %207 = load %struct.r1net*, %struct.r1net** %8, align 8
  %208 = bitcast %struct.r1net* %207 to %struct.tgate*
  store %struct.tgate* %208, %struct.tgate** @r1nets, align 8
  store i8* null, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

209:                                              ; preds = %130, %126
  %210 = bitcast %struct.parm* %6 to %struct.tgate*
  %211 = call i32 @memset(%struct.tgate* %210, i32 0, i32 136)
  br label %212

212:                                              ; preds = %895, %209
  %213 = load i8*, i8** %4, align 8
  %214 = load i8*, i8** %4, align 8
  %215 = call i32 @strspn(i8* %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %213, i64 %216
  store i8* %217, i8** %14, align 8
  %218 = load i8*, i8** %14, align 8
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %212
  %223 = load i8*, i8** %14, align 8
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 35
  br i1 %226, label %227, label %228

227:                                              ; preds = %222, %212
  br label %896

228:                                              ; preds = %222
  %229 = load i8*, i8** %14, align 8
  %230 = load i8*, i8** %14, align 8
  %231 = call i32 @strcspn(i8* %230, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %229, i64 %232
  store i8* %233, i8** %4, align 8
  %234 = load i8*, i8** %4, align 8
  %235 = load i8, i8* %234, align 1
  store i8 %235, i8* %12, align 1
  %236 = load i8, i8* %12, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %237, 61
  br i1 %238, label %239, label %249

239:                                              ; preds = %228
  %240 = load i8*, i8** %4, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %4, align 8
  store i8* %241, i8** %13, align 8
  %242 = trunc i64 %24 to i32
  %243 = call i64 @parse_quote(i8** %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %12, i8* %26, i32 %242)
  %244 = icmp sgt i64 0, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %239
  %246 = load i8*, i8** %14, align 8
  %247 = call i8* @bad_str(i8* %246)
  store i8* %247, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

248:                                              ; preds = %239
  br label %250

249:                                              ; preds = %228
  store i8* null, i8** %13, align 8
  br label %250

250:                                              ; preds = %249, %248
  %251 = load i8, i8* %12, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %275

254:                                              ; preds = %250
  br label %255

255:                                              ; preds = %273, %254
  %256 = load i8*, i8** %4, align 8
  store i8 0, i8* %256, align 1
  %257 = load i8, i8* %12, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp eq i32 %258, 35
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  br label %274

261:                                              ; preds = %255
  %262 = load i8*, i8** %4, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %4, align 8
  %264 = load i8, i8* %12, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp ne i32 %265, 32
  br i1 %266, label %272, label %267

267:                                              ; preds = %261
  %268 = load i8*, i8** %4, align 8
  %269 = load i8, i8* %268, align 1
  store i8 %269, i8* %12, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp ne i32 %270, 32
  br i1 %271, label %272, label %273

272:                                              ; preds = %267, %261
  br label %274

273:                                              ; preds = %267
  br label %255

274:                                              ; preds = %272, %260
  br label %275

275:                                              ; preds = %274, %250
  %276 = load i8*, i8** %14, align 8
  %277 = call i32 @strncasecmp(i8* %276, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %297, label %279

279:                                              ; preds = %275
  %280 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 6
  %281 = load i8*, i8** %280, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 0
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %290, label %286

286:                                              ; preds = %279
  %287 = call i64 @strlen(i8* %26)
  %288 = load i64, i64* @IF_NAME_LEN, align 8
  %289 = icmp sgt i64 %287, %288
  br i1 %289, label %290, label %293

290:                                              ; preds = %286, %279
  %291 = load i8*, i8** %14, align 8
  %292 = call i8* @bad_str(i8* %291)
  store i8* %292, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

293:                                              ; preds = %286
  %294 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 6
  %295 = load i8*, i8** %294, align 8
  %296 = call i32 @strcpy(i8* %295, i8* %26)
  br label %895

297:                                              ; preds = %275
  %298 = load i8*, i8** %14, align 8
  %299 = call i32 @strncasecmp(i8* %298, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 5)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %326, label %301

301:                                              ; preds = %297
  %302 = load i8*, i8** %13, align 8
  %303 = icmp eq i8* %302, null
  br i1 %303, label %315, label %304

304:                                              ; preds = %301
  %305 = load i8*, i8** %13, align 8
  %306 = call i32 @getnet(i8* %305, i8** %10, i8** %11)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %315

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 6
  %310 = load i8*, i8** %309, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 0
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %308, %304, %301
  %316 = load i8*, i8** %14, align 8
  %317 = call i8* @bad_str(i8* %316)
  store i8* %317, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

318:                                              ; preds = %308
  %319 = load i8*, i8** %10, align 8
  %320 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 17
  store i8* %319, i8** %320, align 8
  %321 = load i8*, i8** %11, align 8
  %322 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 16
  store i8* %321, i8** %322, align 8
  %323 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 6
  %324 = load i8*, i8** %323, align 8
  %325 = getelementptr inbounds i8, i8* %324, i64 0
  store i8 10, i8* %325, align 1
  br label %894

326:                                              ; preds = %297
  %327 = load i8*, i8** %14, align 8
  %328 = call i32 @strncasecmp(i8* %327, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 7)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %348, label %330

330:                                              ; preds = %326
  %331 = load i8*, i8** %13, align 8
  %332 = icmp eq i8* %331, null
  br i1 %332, label %333, label %335

333:                                              ; preds = %330
  %334 = call i8* @bad_str(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  store i8* %334, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

335:                                              ; preds = %330
  %336 = load i8*, i8** %14, align 8
  %337 = load i8*, i8** %13, align 8
  %338 = bitcast %struct.parm* %6 to %struct.tgate*
  %339 = load i32, i32* @RIP_AUTH_PW, align 4
  %340 = call i8* @get_passwd(i8* %336, i8* %337, %struct.tgate* %338, i32 %339, i32 1)
  store i8* %340, i8** %17, align 8
  %341 = load i8*, i8** %17, align 8
  %342 = icmp ne i8* %341, null
  br i1 %342, label %343, label %347

343:                                              ; preds = %335
  %344 = load i8*, i8** %13, align 8
  store i8 0, i8* %344, align 1
  %345 = load i8*, i8** %17, align 8
  %346 = call i8* @bad_str(i8* %345)
  store i8* %346, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

347:                                              ; preds = %335
  br label %893

348:                                              ; preds = %326
  %349 = load i8*, i8** %14, align 8
  %350 = call i32 @strncasecmp(i8* %349, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 11)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %366, label %352

352:                                              ; preds = %348
  %353 = load i8*, i8** %14, align 8
  %354 = load i8*, i8** %13, align 8
  %355 = bitcast %struct.parm* %6 to %struct.tgate*
  %356 = load i32, i32* @RIP_AUTH_MD5, align 4
  %357 = load i32, i32* %5, align 4
  %358 = call i8* @get_passwd(i8* %353, i8* %354, %struct.tgate* %355, i32 %356, i32 %357)
  store i8* %358, i8** %17, align 8
  %359 = load i8*, i8** %17, align 8
  %360 = icmp ne i8* %359, null
  br i1 %360, label %361, label %365

361:                                              ; preds = %352
  %362 = load i8*, i8** %13, align 8
  store i8 0, i8* %362, align 1
  %363 = load i8*, i8** %17, align 8
  %364 = call i8* @bad_str(i8* %363)
  store i8* %364, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

365:                                              ; preds = %352
  br label %892

366:                                              ; preds = %348
  %367 = load i8*, i8** %14, align 8
  %368 = call i32 @strcasecmp(i8* %367, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %377, label %370

370:                                              ; preds = %366
  %371 = load i32, i32* @IS_NO_AG, align 4
  %372 = load i32, i32* @IS_NO_SUPER_AG, align 4
  %373 = or i32 %371, %372
  %374 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %375 = load i32, i32* %374, align 8
  %376 = or i32 %375, %373
  store i32 %376, i32* %374, align 8
  br label %891

377:                                              ; preds = %366
  %378 = load i8*, i8** %14, align 8
  %379 = call i32 @strcasecmp(i8* %378, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %386, label %381

381:                                              ; preds = %377
  %382 = load i32, i32* @IS_NO_SUPER_AG, align 4
  %383 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %384 = load i32, i32* %383, align 8
  %385 = or i32 %384, %382
  store i32 %385, i32* %383, align 8
  br label %890

386:                                              ; preds = %377
  %387 = load i8*, i8** %14, align 8
  %388 = call i32 @strcasecmp(i8* %387, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %395, label %390

390:                                              ; preds = %386
  %391 = load i32, i32* @IS_NO_RIP_OUT, align 4
  %392 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %393 = load i32, i32* %392, align 8
  %394 = or i32 %393, %391
  store i32 %394, i32* %392, align 8
  br label %889

395:                                              ; preds = %386
  %396 = load i8*, i8** %14, align 8
  %397 = call i32 @strcasecmp(i8* %396, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %404, label %399

399:                                              ; preds = %395
  %400 = load i32, i32* @IS_NO_RIPV1_IN, align 4
  %401 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %402 = load i32, i32* %401, align 8
  %403 = or i32 %402, %400
  store i32 %403, i32* %401, align 8
  br label %888

404:                                              ; preds = %395
  %405 = load i8*, i8** %14, align 8
  %406 = call i32 @strcasecmp(i8* %405, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %413, label %408

408:                                              ; preds = %404
  %409 = load i32, i32* @IS_NO_RIPV2_IN, align 4
  %410 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %411 = load i32, i32* %410, align 8
  %412 = or i32 %411, %409
  store i32 %412, i32* %410, align 8
  br label %887

413:                                              ; preds = %404
  %414 = load i8*, i8** %14, align 8
  %415 = call i32 @strcasecmp(i8* %414, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %431, label %417

417:                                              ; preds = %413
  %418 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %419 = load i32, i32* %418, align 8
  %420 = load i32, i32* @IS_NO_RIPV2_OUT, align 4
  %421 = and i32 %419, %420
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %417
  %424 = load i8*, i8** %14, align 8
  %425 = call i8* @bad_str(i8* %424)
  store i8* %425, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

426:                                              ; preds = %417
  %427 = load i32, i32* @IS_NO_RIPV1_OUT, align 4
  %428 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %429 = load i32, i32* %428, align 8
  %430 = or i32 %429, %427
  store i32 %430, i32* %428, align 8
  br label %886

431:                                              ; preds = %413
  %432 = load i8*, i8** %14, align 8
  %433 = call i32 @strcasecmp(i8* %432, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %457, label %435

435:                                              ; preds = %431
  %436 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %437 = load i32, i32* %436, align 8
  %438 = load i32, i32* @IS_NO_RIPV2_OUT, align 4
  %439 = and i32 %437, %438
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %447, label %441

441:                                              ; preds = %435
  %442 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %443 = load i32, i32* %442, align 8
  %444 = load i32, i32* @IS_NO_RIPV2_IN, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %450

447:                                              ; preds = %441, %435
  %448 = load i8*, i8** %14, align 8
  %449 = call i8* @bad_str(i8* %448)
  store i8* %449, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

450:                                              ; preds = %441
  %451 = load i32, i32* @IS_NO_RIPV1_IN, align 4
  %452 = load i32, i32* @IS_NO_RIPV1_OUT, align 4
  %453 = or i32 %451, %452
  %454 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %455 = load i32, i32* %454, align 8
  %456 = or i32 %455, %453
  store i32 %456, i32* %454, align 8
  br label %885

457:                                              ; preds = %431
  %458 = load i8*, i8** %14, align 8
  %459 = call i32 @strcasecmp(i8* %458, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %476, label %461

461:                                              ; preds = %457
  %462 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* @IS_PM_RDISC, align 4
  %465 = load i32, i32* @IS_NO_RIP, align 4
  %466 = xor i32 %465, -1
  %467 = and i32 %464, %466
  %468 = and i32 %463, %467
  %469 = icmp ne i32 0, %468
  br i1 %469, label %470, label %471

470:                                              ; preds = %461
  br label %896

471:                                              ; preds = %461
  %472 = load i32, i32* @IS_NO_RIP, align 4
  %473 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %474 = load i32, i32* %473, align 8
  %475 = or i32 %474, %472
  store i32 %475, i32* %473, align 8
  br label %884

476:                                              ; preds = %457
  %477 = load i8*, i8** %14, align 8
  %478 = call i32 @strcasecmp(i8* %477, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %485, label %480

480:                                              ; preds = %476
  %481 = load i32, i32* @IS_NO_RIP_MCAST, align 4
  %482 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %483 = load i32, i32* %482, align 8
  %484 = or i32 %483, %481
  store i32 %484, i32* %482, align 8
  br label %883

485:                                              ; preds = %476
  %486 = load i8*, i8** %14, align 8
  %487 = call i32 @strcasecmp(i8* %486, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %506, label %489

489:                                              ; preds = %485
  %490 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %491 = load i32, i32* %490, align 8
  %492 = load i32, i32* @GROUP_IS_SOL_OUT, align 4
  %493 = load i32, i32* @GROUP_IS_ADV_OUT, align 4
  %494 = or i32 %492, %493
  %495 = load i32, i32* @IS_NO_RDISC, align 4
  %496 = xor i32 %495, -1
  %497 = and i32 %494, %496
  %498 = and i32 %491, %497
  %499 = icmp ne i32 0, %498
  br i1 %499, label %500, label %501

500:                                              ; preds = %489
  br label %896

501:                                              ; preds = %489
  %502 = load i32, i32* @IS_NO_RDISC, align 4
  %503 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %504 = load i32, i32* %503, align 8
  %505 = or i32 %504, %502
  store i32 %505, i32* %503, align 8
  br label %882

506:                                              ; preds = %485
  %507 = load i8*, i8** %14, align 8
  %508 = call i32 @strcasecmp(i8* %507, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %525, label %510

510:                                              ; preds = %506
  %511 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %512 = load i32, i32* %511, align 8
  %513 = load i32, i32* @GROUP_IS_SOL_OUT, align 4
  %514 = load i32, i32* @IS_NO_SOL_OUT, align 4
  %515 = xor i32 %514, -1
  %516 = and i32 %513, %515
  %517 = and i32 %512, %516
  %518 = icmp ne i32 0, %517
  br i1 %518, label %519, label %520

519:                                              ; preds = %510
  br label %896

520:                                              ; preds = %510
  %521 = load i32, i32* @IS_NO_SOL_OUT, align 4
  %522 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %523 = load i32, i32* %522, align 8
  %524 = or i32 %523, %521
  store i32 %524, i32* %522, align 8
  br label %881

525:                                              ; preds = %506
  %526 = load i8*, i8** %14, align 8
  %527 = call i32 @strcasecmp(i8* %526, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %544, label %529

529:                                              ; preds = %525
  %530 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %531 = load i32, i32* %530, align 8
  %532 = load i32, i32* @GROUP_IS_SOL_OUT, align 4
  %533 = load i32, i32* @IS_SOL_OUT, align 4
  %534 = xor i32 %533, -1
  %535 = and i32 %532, %534
  %536 = and i32 %531, %535
  %537 = icmp ne i32 0, %536
  br i1 %537, label %538, label %539

538:                                              ; preds = %529
  br label %896

539:                                              ; preds = %529
  %540 = load i32, i32* @IS_SOL_OUT, align 4
  %541 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %542 = load i32, i32* %541, align 8
  %543 = or i32 %542, %540
  store i32 %543, i32* %541, align 8
  br label %880

544:                                              ; preds = %525
  %545 = load i8*, i8** %14, align 8
  %546 = call i32 @strcasecmp(i8* %545, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %563, label %548

548:                                              ; preds = %544
  %549 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %550 = load i32, i32* %549, align 8
  %551 = load i32, i32* @GROUP_IS_ADV_OUT, align 4
  %552 = load i32, i32* @IS_NO_ADV_OUT, align 4
  %553 = xor i32 %552, -1
  %554 = and i32 %551, %553
  %555 = and i32 %550, %554
  %556 = icmp ne i32 0, %555
  br i1 %556, label %557, label %558

557:                                              ; preds = %548
  br label %896

558:                                              ; preds = %548
  %559 = load i32, i32* @IS_NO_ADV_OUT, align 4
  %560 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %561 = load i32, i32* %560, align 8
  %562 = or i32 %561, %559
  store i32 %562, i32* %560, align 8
  br label %879

563:                                              ; preds = %544
  %564 = load i8*, i8** %14, align 8
  %565 = call i32 @strcasecmp(i8* %564, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %582, label %567

567:                                              ; preds = %563
  %568 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %569 = load i32, i32* %568, align 8
  %570 = load i32, i32* @GROUP_IS_ADV_OUT, align 4
  %571 = load i32, i32* @IS_ADV_OUT, align 4
  %572 = xor i32 %571, -1
  %573 = and i32 %570, %572
  %574 = and i32 %569, %573
  %575 = icmp ne i32 0, %574
  br i1 %575, label %576, label %577

576:                                              ; preds = %567
  br label %896

577:                                              ; preds = %567
  %578 = load i32, i32* @IS_ADV_OUT, align 4
  %579 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %580 = load i32, i32* %579, align 8
  %581 = or i32 %580, %578
  store i32 %581, i32* %579, align 8
  br label %878

582:                                              ; preds = %563
  %583 = load i8*, i8** %14, align 8
  %584 = call i32 @strcasecmp(i8* %583, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %591, label %586

586:                                              ; preds = %582
  %587 = load i32, i32* @IS_BCAST_RDISC, align 4
  %588 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %589 = load i32, i32* %588, align 8
  %590 = or i32 %589, %587
  store i32 %590, i32* %588, align 8
  br label %877

591:                                              ; preds = %582
  %592 = load i8*, i8** %14, align 8
  %593 = call i32 @strcasecmp(i8* %592, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %618, label %595

595:                                              ; preds = %591
  %596 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %597 = load i32, i32* %596, align 8
  %598 = load i32, i32* @GROUP_IS_SOL_OUT, align 4
  %599 = load i32, i32* @GROUP_IS_ADV_OUT, align 4
  %600 = or i32 %598, %599
  %601 = load i32, i32* @IS_NO_RDISC, align 4
  %602 = xor i32 %601, -1
  %603 = and i32 %600, %602
  %604 = and i32 %597, %603
  %605 = icmp ne i32 0, %604
  br i1 %605, label %606, label %607

606:                                              ; preds = %595
  br label %896

607:                                              ; preds = %595
  %608 = load i32, i32* @IS_NO_RDISC, align 4
  %609 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %610 = load i32, i32* %609, align 8
  %611 = or i32 %610, %608
  store i32 %611, i32* %609, align 8
  %612 = load i32, i32* @IS_NO_RIP, align 4
  %613 = load i32, i32* @IS_PASSIVE, align 4
  %614 = or i32 %612, %613
  %615 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %616 = load i32, i32* %615, align 8
  %617 = or i32 %616, %614
  store i32 %617, i32* %615, align 8
  br label %876

618:                                              ; preds = %591
  %619 = load i8*, i8** %14, align 8
  %620 = call i32 @strncasecmp(i8* %619, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i32 11)
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %638, label %622

622:                                              ; preds = %618
  %623 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 8
  %624 = load i32, i32* %623, align 4
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %634, label %626

626:                                              ; preds = %622
  %627 = call i64 @strtol(i8* %26, i8** %16, i32 0)
  %628 = trunc i64 %627 to i32
  %629 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 8
  store i32 %628, i32* %629, align 4
  %630 = load i8*, i8** %16, align 8
  %631 = load i8, i8* %630, align 1
  %632 = sext i8 %631 to i32
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %634, label %637

634:                                              ; preds = %626, %622
  %635 = load i8*, i8** %14, align 8
  %636 = call i8* @bad_str(i8* %635)
  store i8* %636, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

637:                                              ; preds = %626
  br label %875

638:                                              ; preds = %618
  %639 = load i8*, i8** %14, align 8
  %640 = call i32 @strcasecmp(i8* %639, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0))
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %655, label %642

642:                                              ; preds = %638
  %643 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %644 = load i32, i32* %643, align 8
  %645 = call i64 @IS_RIP_OUT_OFF(i32 %644)
  %646 = icmp ne i64 %645, 0
  br i1 %646, label %647, label %650

647:                                              ; preds = %642
  %648 = load i8*, i8** %14, align 8
  %649 = call i8* @bad_str(i8* %648)
  store i8* %649, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

650:                                              ; preds = %642
  %651 = load i32, i32* @IS_PM_RDISC, align 4
  %652 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %653 = load i32, i32* %652, align 8
  %654 = or i32 %653, %651
  store i32 %654, i32* %652, align 8
  br label %874

655:                                              ; preds = %638
  %656 = load i8*, i8** %14, align 8
  %657 = call i32 @strncasecmp(i8* %656, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i32 15)
  %658 = icmp ne i32 %657, 0
  br i1 %658, label %684, label %659

659:                                              ; preds = %655
  %660 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 9
  %661 = load i32, i32* %660, align 8
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %680, label %663

663:                                              ; preds = %659
  %664 = call i32 @strtoul(i8* %26, i8** %16, i32 0)
  %665 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 9
  store i32 %664, i32* %665, align 8
  %666 = load i8*, i8** %16, align 8
  %667 = load i8, i8* %666, align 1
  %668 = sext i8 %667 to i32
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %680, label %670

670:                                              ; preds = %663
  %671 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 9
  %672 = load i32, i32* %671, align 8
  %673 = load i32, i32* @MinMaxAdvertiseInterval, align 4
  %674 = icmp slt i32 %672, %673
  br i1 %674, label %680, label %675

675:                                              ; preds = %670
  %676 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 9
  %677 = load i32, i32* %676, align 8
  %678 = load i32, i32* @MaxMaxAdvertiseInterval, align 4
  %679 = icmp sgt i32 %677, %678
  br i1 %679, label %680, label %683

680:                                              ; preds = %675, %670, %663, %659
  %681 = load i8*, i8** %14, align 8
  %682 = call i8* @bad_str(i8* %681)
  store i8* %682, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

683:                                              ; preds = %675
  br label %873

684:                                              ; preds = %655
  %685 = load i8*, i8** %14, align 8
  %686 = call i32 @strncasecmp(i8* %685, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i32 13)
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %714, label %688

688:                                              ; preds = %684
  %689 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 10
  %690 = load i32, i32* %689, align 4
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %708, label %692

692:                                              ; preds = %688
  %693 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %694 = load i32, i32* %693, align 8
  %695 = call i64 @IS_RIP_OUT_OFF(i32 %694)
  %696 = icmp ne i64 %695, 0
  br i1 %696, label %708, label %697

697:                                              ; preds = %692
  %698 = call i32 @strtoul(i8* %26, i8** %16, i32 0)
  store i32 %698, i32* %21, align 4
  %699 = load i8*, i8** %16, align 8
  %700 = load i8, i8* %699, align 1
  %701 = sext i8 %700 to i32
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %708, label %703

703:                                              ; preds = %697
  %704 = load i32, i32* %21, align 4
  %705 = load i32, i32* @HOPCNT_INFINITY, align 4
  %706 = sub nsw i32 %705, 1
  %707 = icmp sgt i32 %704, %706
  br i1 %707, label %708, label %711

708:                                              ; preds = %703, %697, %692, %688
  %709 = load i8*, i8** %14, align 8
  %710 = call i8* @bad_str(i8* %709)
  store i8* %710, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

711:                                              ; preds = %703
  %712 = load i32, i32* %21, align 4
  %713 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 10
  store i32 %712, i32* %713, align 4
  br label %872

714:                                              ; preds = %684
  %715 = load i8*, i8** %14, align 8
  %716 = call i32 @strncasecmp(i8* %715, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i32 13)
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %739, label %718

718:                                              ; preds = %714
  %719 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 11
  %720 = load i32, i32* %719, align 8
  %721 = icmp ne i32 %720, 0
  br i1 %721, label %733, label %722

722:                                              ; preds = %718
  %723 = call i32 @strtoul(i8* %26, i8** %16, i32 0)
  store i32 %723, i32* %21, align 4
  %724 = load i8*, i8** %16, align 8
  %725 = load i8, i8* %724, align 1
  %726 = sext i8 %725 to i32
  %727 = icmp ne i32 %726, 0
  br i1 %727, label %733, label %728

728:                                              ; preds = %722
  %729 = load i32, i32* %21, align 4
  %730 = load i32, i32* @HOPCNT_INFINITY, align 4
  %731 = sub nsw i32 %730, 1
  %732 = icmp sgt i32 %729, %731
  br i1 %732, label %733, label %736

733:                                              ; preds = %728, %722, %718
  %734 = load i8*, i8** %14, align 8
  %735 = call i8* @bad_str(i8* %734)
  store i8* %735, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

736:                                              ; preds = %728
  %737 = load i32, i32* %21, align 4
  %738 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 11
  store i32 %737, i32* %738, align 8
  br label %871

739:                                              ; preds = %714
  %740 = load i8*, i8** %14, align 8
  %741 = call i32 @strncasecmp(i8* %740, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i32 14)
  %742 = icmp ne i32 %741, 0
  br i1 %742, label %764, label %743

743:                                              ; preds = %739
  %744 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 12
  %745 = load i32, i32* %744, align 4
  %746 = icmp ne i32 %745, 0
  br i1 %746, label %758, label %747

747:                                              ; preds = %743
  %748 = call i32 @strtoul(i8* %26, i8** %16, i32 0)
  store i32 %748, i32* %21, align 4
  %749 = load i8*, i8** %16, align 8
  %750 = load i8, i8* %749, align 1
  %751 = sext i8 %750 to i32
  %752 = icmp ne i32 %751, 0
  br i1 %752, label %758, label %753

753:                                              ; preds = %747
  %754 = load i32, i32* %21, align 4
  %755 = load i32, i32* @HOPCNT_INFINITY, align 4
  %756 = sub nsw i32 %755, 1
  %757 = icmp sgt i32 %754, %756
  br i1 %757, label %758, label %761

758:                                              ; preds = %753, %747, %743
  %759 = load i8*, i8** %14, align 8
  %760 = call i8* @bad_str(i8* %759)
  store i8* %760, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

761:                                              ; preds = %753
  %762 = load i32, i32* %21, align 4
  %763 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 12
  store i32 %762, i32* %763, align 4
  br label %870

764:                                              ; preds = %739
  %765 = load i8*, i8** %14, align 8
  %766 = call i32 @strncasecmp(i8* %765, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 14)
  %767 = icmp ne i32 %766, 0
  br i1 %767, label %856, label %768

768:                                              ; preds = %764
  store i8* %26, i8** %16, align 8
  %769 = trunc i64 %28 to i32
  %770 = call i64 @parse_quote(i8** %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i8* %12, i8* %29, i32 %769)
  %771 = icmp sgt i64 0, %770
  br i1 %771, label %775, label %772

772:                                              ; preds = %768
  %773 = call i32 @gethost(i8* %29, i8** %10)
  %774 = icmp ne i32 %773, 0
  br i1 %774, label %778, label %775

775:                                              ; preds = %772, %768
  %776 = load i8*, i8** %14, align 8
  %777 = call i8* @bad_str(i8* %776)
  store i8* %777, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

778:                                              ; preds = %772
  %779 = call i64 @rtmalloc(i32 136, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i64 0, i64 0))
  %780 = inttoptr i64 %779 to %struct.tgate*
  store %struct.tgate* %780, %struct.tgate** %9, align 8
  %781 = load %struct.tgate*, %struct.tgate** %9, align 8
  %782 = call i32 @memset(%struct.tgate* %781, i32 0, i32 136)
  %783 = load i8*, i8** %10, align 8
  %784 = load %struct.tgate*, %struct.tgate** %9, align 8
  %785 = getelementptr inbounds %struct.tgate, %struct.tgate* %784, i32 0, i32 15
  store i8* %783, i8** %785, align 8
  store i32 0, i32* %21, align 4
  br label %786

786:                                              ; preds = %844, %778
  %787 = load i8, i8* %12, align 1
  %788 = sext i8 %787 to i32
  %789 = icmp eq i32 %788, 124
  br i1 %789, label %790, label %847

790:                                              ; preds = %786
  %791 = load i8*, i8** %16, align 8
  %792 = getelementptr inbounds i8, i8* %791, i32 1
  store i8* %792, i8** %16, align 8
  %793 = load i32, i32* %21, align 4
  %794 = load i32, i32* @MAX_TGATE_NETS, align 4
  %795 = icmp sge i32 %793, %794
  br i1 %795, label %839, label %796

796:                                              ; preds = %790
  %797 = trunc i64 %28 to i32
  %798 = call i64 @parse_quote(i8** %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i8* %12, i8* %29, i32 %797)
  %799 = icmp sgt i64 0, %798
  br i1 %799, label %839, label %800

800:                                              ; preds = %796
  %801 = load %struct.tgate*, %struct.tgate** %9, align 8
  %802 = getelementptr inbounds %struct.tgate, %struct.tgate* %801, i32 0, i32 14
  %803 = load %struct.TYPE_2__*, %struct.TYPE_2__** %802, align 8
  %804 = load i32, i32* %21, align 4
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %803, i64 %805
  %807 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %806, i32 0, i32 0
  %808 = load %struct.tgate*, %struct.tgate** %9, align 8
  %809 = getelementptr inbounds %struct.tgate, %struct.tgate* %808, i32 0, i32 14
  %810 = load %struct.TYPE_2__*, %struct.TYPE_2__** %809, align 8
  %811 = load i32, i32* %21, align 4
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %810, i64 %812
  %814 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %813, i32 0, i32 1
  %815 = call i32 @getnet(i8* %29, i8** %807, i8** %814)
  %816 = icmp ne i32 %815, 0
  br i1 %816, label %817, label %839

817:                                              ; preds = %800
  %818 = load %struct.tgate*, %struct.tgate** %9, align 8
  %819 = getelementptr inbounds %struct.tgate, %struct.tgate* %818, i32 0, i32 14
  %820 = load %struct.TYPE_2__*, %struct.TYPE_2__** %819, align 8
  %821 = load i32, i32* %21, align 4
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %820, i64 %822
  %824 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %823, i32 0, i32 0
  %825 = load i8*, i8** %824, align 8
  %826 = load i64, i64* @RIP_DEFAULT, align 8
  %827 = inttoptr i64 %826 to i8*
  %828 = icmp eq i8* %825, %827
  br i1 %828, label %839, label %829

829:                                              ; preds = %817
  %830 = load %struct.tgate*, %struct.tgate** %9, align 8
  %831 = getelementptr inbounds %struct.tgate, %struct.tgate* %830, i32 0, i32 14
  %832 = load %struct.TYPE_2__*, %struct.TYPE_2__** %831, align 8
  %833 = load i32, i32* %21, align 4
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %832, i64 %834
  %836 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %835, i32 0, i32 1
  %837 = load i8*, i8** %836, align 8
  %838 = icmp eq i8* %837, null
  br i1 %838, label %839, label %844

839:                                              ; preds = %829, %817, %800, %796, %790
  %840 = load %struct.tgate*, %struct.tgate** %9, align 8
  %841 = call i32 @free(%struct.tgate* %840)
  %842 = load i8*, i8** %14, align 8
  %843 = call i8* @bad_str(i8* %842)
  store i8* %843, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

844:                                              ; preds = %829
  %845 = load i32, i32* %21, align 4
  %846 = add nsw i32 %845, 1
  store i32 %846, i32* %21, align 4
  br label %786

847:                                              ; preds = %786
  %848 = load %struct.tgate*, %struct.tgate** @tgates, align 8
  %849 = load %struct.tgate*, %struct.tgate** %9, align 8
  %850 = getelementptr inbounds %struct.tgate, %struct.tgate* %849, i32 0, i32 13
  store %struct.tgate* %848, %struct.tgate** %850, align 8
  %851 = load %struct.tgate*, %struct.tgate** %9, align 8
  store %struct.tgate* %851, %struct.tgate** @tgates, align 8
  %852 = load i32, i32* @IS_DISTRUST, align 4
  %853 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %854 = load i32, i32* %853, align 8
  %855 = or i32 %854, %852
  store i32 %855, i32* %853, align 8
  br label %869

856:                                              ; preds = %764
  %857 = load i8*, i8** %14, align 8
  %858 = call i32 @strcasecmp(i8* %857, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0))
  %859 = icmp ne i32 %858, 0
  br i1 %859, label %865, label %860

860:                                              ; preds = %856
  %861 = load i32, i32* @IS_REDIRECT_OK, align 4
  %862 = getelementptr inbounds %struct.parm, %struct.parm* %6, i32 0, i32 7
  %863 = load i32, i32* %862, align 8
  %864 = or i32 %863, %861
  store i32 %864, i32* %862, align 8
  br label %868

865:                                              ; preds = %856
  %866 = load i8*, i8** %14, align 8
  %867 = call i8* @bad_str(i8* %866)
  store i8* %867, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

868:                                              ; preds = %860
  br label %869

869:                                              ; preds = %868, %847
  br label %870

870:                                              ; preds = %869, %761
  br label %871

871:                                              ; preds = %870, %736
  br label %872

872:                                              ; preds = %871, %711
  br label %873

873:                                              ; preds = %872, %683
  br label %874

874:                                              ; preds = %873, %650
  br label %875

875:                                              ; preds = %874, %637
  br label %876

876:                                              ; preds = %875, %607
  br label %877

877:                                              ; preds = %876, %586
  br label %878

878:                                              ; preds = %877, %577
  br label %879

879:                                              ; preds = %878, %558
  br label %880

880:                                              ; preds = %879, %539
  br label %881

881:                                              ; preds = %880, %520
  br label %882

882:                                              ; preds = %881, %501
  br label %883

883:                                              ; preds = %882, %480
  br label %884

884:                                              ; preds = %883, %471
  br label %885

885:                                              ; preds = %884, %450
  br label %886

886:                                              ; preds = %885, %426
  br label %887

887:                                              ; preds = %886, %408
  br label %888

888:                                              ; preds = %887, %399
  br label %889

889:                                              ; preds = %888, %390
  br label %890

890:                                              ; preds = %889, %381
  br label %891

891:                                              ; preds = %890, %370
  br label %892

892:                                              ; preds = %891, %365
  br label %893

893:                                              ; preds = %892, %347
  br label %894

894:                                              ; preds = %893, %318
  br label %895

895:                                              ; preds = %894, %293
  br label %212

896:                                              ; preds = %606, %576, %557, %538, %519, %500, %470, %227
  %897 = bitcast %struct.parm* %6 to %struct.tgate*
  %898 = call i8* @check_parms(%struct.tgate* %897)
  store i8* %898, i8** %3, align 8
  store i32 1, i32* %22, align 4
  br label %899

899:                                              ; preds = %896, %865, %839, %775, %758, %733, %708, %680, %647, %634, %447, %423, %361, %343, %333, %315, %290, %245, %202, %196, %161, %144, %111, %105, %76, %43
  %900 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %900)
  %901 = load i8*, i8** %3, align 8
  ret i8* %901
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #2

declare dso_local i64 @parse_quote(i8**, i8*, i8*, i8*, i32) #2

declare dso_local i8* @bad_str(i8*) #2

declare dso_local i64 @rtmalloc(i32, i8*) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @free(%struct.tgate*) #2

declare dso_local i32 @getnet(i8*, i8**, i8**) #2

declare dso_local i64 @htonl(i64) #2

declare dso_local i32 @memset(%struct.tgate*, i32, i32) #2

declare dso_local i32 @strspn(i8*, i8*) #2

declare dso_local i32 @strcspn(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @get_passwd(i8*, i8*, %struct.tgate*, i32, i32) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i64 @IS_RIP_OUT_OFF(i32) #2

declare dso_local i32 @strtoul(i8*, i8**, i32) #2

declare dso_local i32 @gethost(i8*, i8**) #2

declare dso_local i8* @check_parms(%struct.tgate*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
