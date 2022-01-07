; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64lsn.c_nat64lsn_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64lsn.c_nat64lsn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i32 }

@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"config options required\00", align 1
@IP_FW_NAT64LSN_CONFIG = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to get config for instance %s\00", align 1
@nat64newcmds = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Max per-user ports required\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"job queue length required\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"host delete delay required\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"portgroup delete delay required\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"tcp syn age required\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"tcp close age required\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"tcp est age required\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"udp age required\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"icmp age required\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"number of chunks required\00", align 1
@NAT64_LOG = common dso_local global i32 0, align 4
@NAT64_ALLOW_PRIVATE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"Can't change %s option\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"nat64lsn instance configuration failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8**)* @nat64lsn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nat64lsn_config(i8* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca [88 x i8], align 16
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EX_USAGE, align 4
  %19 = call i32 (i32, i8*, ...) @errx(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %4
  %21 = bitcast [88 x i8]* %9 to i8**
  %22 = call i32 @memset(i8** %21, i32 0, i32 88)
  %23 = getelementptr inbounds [88 x i8], [88 x i8]* %9, i64 0, i64 0
  %24 = bitcast i8* %23 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %11, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 1
  %27 = bitcast %struct.TYPE_3__* %26 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %10, align 8
  store i64 88, i64* %12, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @nat64lsn_fill_ntlv(i32* %29, i8* %30, i32 %31)
  %33 = load i32, i32* @IP_FW_NAT64LSN_CONFIG, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i64 @do_get3(i32 %33, i32* %35, i64* %12)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %20
  %39 = load i32, i32* @EX_OSERR, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 (i32, i8*, ...) @err(i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %38, %20
  br label %43

43:                                               ; preds = %209, %42
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %210

46:                                               ; preds = %43
  %47 = load i32, i32* @nat64newcmds, align 4
  %48 = load i8**, i8*** %8, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @get_token(i32 %47, i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %50, i32* %14, align 4
  %51 = load i8**, i8*** %8, align 8
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %13, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %7, align 4
  %55 = load i8**, i8*** %8, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %56, i8*** %8, align 8
  %57 = load i32, i32* %14, align 4
  switch i32 %57, label %205 [
    i32 136, label %58
    i32 139, label %70
    i32 141, label %82
    i32 135, label %94
    i32 129, label %106
    i32 131, label %118
    i32 130, label %130
    i32 128, label %142
    i32 140, label %154
    i32 132, label %166
    i32 138, label %179
    i32 137, label %185
    i32 134, label %192
    i32 133, label %198
  ]

58:                                               ; preds = %46
  %59 = call i32 @NEED1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i8**, i8*** %8, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = call i8* @nat64lsn_parse_int(i8* %61, i8* %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 10
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %7, align 4
  %68 = load i8**, i8*** %8, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %69, i8*** %8, align 8
  br label %209

70:                                               ; preds = %46
  %71 = call i32 @NEED1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i8**, i8*** %8, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = call i8* @nat64lsn_parse_int(i8* %73, i8* %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 9
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %7, align 4
  %80 = load i8**, i8*** %8, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i32 1
  store i8** %81, i8*** %8, align 8
  br label %209

82:                                               ; preds = %46
  %83 = call i32 @NEED1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %84 = load i8**, i8*** %8, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = call i8* @nat64lsn_parse_int(i8* %85, i8* %86)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 8
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %7, align 4
  %92 = load i8**, i8*** %8, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %93, i8*** %8, align 8
  br label %209

94:                                               ; preds = %46
  %95 = call i32 @NEED1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %96 = load i8**, i8*** %8, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = call i8* @nat64lsn_parse_int(i8* %97, i8* %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 7
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %7, align 4
  %104 = load i8**, i8*** %8, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i32 1
  store i8** %105, i8*** %8, align 8
  br label %209

106:                                              ; preds = %46
  %107 = call i32 @NEED1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %108 = load i8**, i8*** %8, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = call i8* @nat64lsn_parse_int(i8* %109, i8* %110)
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 6
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %7, align 4
  %116 = load i8**, i8*** %8, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i32 1
  store i8** %117, i8*** %8, align 8
  br label %209

118:                                              ; preds = %46
  %119 = call i32 @NEED1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %120 = load i8**, i8*** %8, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = call i8* @nat64lsn_parse_int(i8* %121, i8* %122)
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 5
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %7, align 4
  %128 = load i8**, i8*** %8, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i32 1
  store i8** %129, i8*** %8, align 8
  br label %209

130:                                              ; preds = %46
  %131 = call i32 @NEED1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %132 = load i8**, i8*** %8, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = load i8*, i8** %13, align 8
  %135 = call i8* @nat64lsn_parse_int(i8* %133, i8* %134)
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 4
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %7, align 4
  %140 = load i8**, i8*** %8, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i32 1
  store i8** %141, i8*** %8, align 8
  br label %209

142:                                              ; preds = %46
  %143 = call i32 @NEED1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %144 = load i8**, i8*** %8, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = load i8*, i8** %13, align 8
  %147 = call i8* @nat64lsn_parse_int(i8* %145, i8* %146)
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  store i8* %147, i8** %149, align 8
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %7, align 4
  %152 = load i8**, i8*** %8, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i32 1
  store i8** %153, i8*** %8, align 8
  br label %209

154:                                              ; preds = %46
  %155 = call i32 @NEED1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %156 = load i8**, i8*** %8, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = load i8*, i8** %13, align 8
  %159 = call i8* @nat64lsn_parse_int(i8* %157, i8* %158)
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  store i8* %159, i8** %161, align 8
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %7, align 4
  %164 = load i8**, i8*** %8, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i32 1
  store i8** %165, i8*** %8, align 8
  br label %209

166:                                              ; preds = %46
  %167 = call i32 @NEED1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %168 = load i8**, i8*** %8, align 8
  %169 = load i8*, i8** %168, align 8
  %170 = load i8*, i8** %13, align 8
  %171 = call i8* @nat64lsn_parse_int(i8* %169, i8* %170)
  %172 = ptrtoint i8* %171 to i32
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %7, align 4
  %177 = load i8**, i8*** %8, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i32 1
  store i8** %178, i8*** %8, align 8
  br label %209

179:                                              ; preds = %46
  %180 = load i32, i32* @NAT64_LOG, align 4
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %209

185:                                              ; preds = %46
  %186 = load i32, i32* @NAT64_LOG, align 4
  %187 = xor i32 %186, -1
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %209

192:                                              ; preds = %46
  %193 = load i32, i32* @NAT64_ALLOW_PRIVATE, align 4
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  br label %209

198:                                              ; preds = %46
  %199 = load i32, i32* @NAT64_ALLOW_PRIVATE, align 4
  %200 = xor i32 %199, -1
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = and i32 %203, %200
  store i32 %204, i32* %202, align 8
  br label %209

205:                                              ; preds = %46
  %206 = load i32, i32* @EX_USAGE, align 4
  %207 = load i8*, i8** %13, align 8
  %208 = call i32 (i32, i8*, ...) @errx(i32 %206, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* %207)
  br label %209

209:                                              ; preds = %205, %198, %192, %185, %179, %166, %154, %142, %130, %118, %106, %94, %82, %70, %58
  br label %43

210:                                              ; preds = %43
  %211 = load i32, i32* @IP_FW_NAT64LSN_CONFIG, align 4
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = call i64 @do_set3(i32 %211, i32* %213, i32 88)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = load i32, i32* @EX_OSERR, align 4
  %218 = call i32 (i32, i8*, ...) @err(i32 %217, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  br label %219

219:                                              ; preds = %216, %210
  ret void
}

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @nat64lsn_fill_ntlv(i32*, i8*, i32) #1

declare dso_local i64 @do_get3(i32, i32*, i64*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @get_token(i32, i8*, i8*) #1

declare dso_local i32 @NEED1(i8*) #1

declare dso_local i8* @nat64lsn_parse_int(i8*, i8*) #1

declare dso_local i64 @do_set3(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
