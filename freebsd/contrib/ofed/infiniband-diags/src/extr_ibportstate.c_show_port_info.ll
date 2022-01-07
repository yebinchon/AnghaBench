; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibportstate.c_show_port_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibportstate.c_show_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_PORT_LID_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@IB_PORT_SMLID_F = common dso_local global i32 0, align 4
@IB_PORT_LMC_F = common dso_local global i32 0, align 4
@IB_PORT_LINK_WIDTH_SUPPORTED_F = common dso_local global i32 0, align 4
@IB_PORT_LINK_WIDTH_ENABLED_F = common dso_local global i32 0, align 4
@IB_PORT_LINK_WIDTH_ACTIVE_F = common dso_local global i32 0, align 4
@IB_PORT_LINK_SPEED_SUPPORTED_F = common dso_local global i32 0, align 4
@IB_PORT_LINK_SPEED_ENABLED_F = common dso_local global i32 0, align 4
@IB_PORT_LINK_SPEED_ACTIVE_F = common dso_local global i32 0, align 4
@IB_PORT_LINK_SPEED_EXT_SUPPORTED_F = common dso_local global i32 0, align 4
@IB_PORT_LINK_SPEED_EXT_ENABLED_F = common dso_local global i32 0, align 4
@IB_PORT_LINK_SPEED_EXT_ACTIVE_F = common dso_local global i32 0, align 4
@show_keys = common dso_local global i64 0, align 8
@IB_PORT_MKEY_F = common dso_local global i32 0, align 4
@NOT_DISPLAYED_STR = common dso_local global i32 0, align 4
@IB_PORT_MKEY_LEASE_F = common dso_local global i32 0, align 4
@IB_PORT_MKEY_PROT_BITS_F = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"# Port info: %s port %d\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @show_port_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_port_info(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2300 x i8], align 16
  %12 = alloca [64 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @mad_dump_portstates(i8* %13, i32 2300, i32* %14, i32 4)
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @IB_PORT_LID_F, align 4
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %19 = call i32 @mad_decode_field(i32* %16, i32 %17, i8* %18)
  %20 = load i32, i32* @IB_PORT_LID_F, align 4
  %21 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %22 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %23 = call i32 @strlen(i8* %22)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %27 = call i32 @strlen(i8* %26)
  %28 = sext i32 %27 to i64
  %29 = sub i64 2300, %28
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %32 = call i32 @mad_dump_field(i32 %20, i8* %25, i32 %30, i8* %31)
  %33 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %34 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %35 = call i32 @strlen(i8* %34)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @IB_PORT_SMLID_F, align 4
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %42 = call i32 @mad_decode_field(i32* %39, i32 %40, i8* %41)
  %43 = load i32, i32* @IB_PORT_SMLID_F, align 4
  %44 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %45 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %46 = call i32 @strlen(i8* %45)
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %50 = call i32 @strlen(i8* %49)
  %51 = sext i32 %50 to i64
  %52 = sub i64 2300, %51
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %55 = call i32 @mad_dump_field(i32 %43, i8* %48, i32 %53, i8* %54)
  %56 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %57 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %58 = call i32 @strlen(i8* %57)
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* @IB_PORT_LMC_F, align 4
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %65 = call i32 @mad_decode_field(i32* %62, i32 %63, i8* %64)
  %66 = load i32, i32* @IB_PORT_LMC_F, align 4
  %67 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %68 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %69 = call i32 @strlen(i8* %68)
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %73 = call i32 @strlen(i8* %72)
  %74 = sext i32 %73 to i64
  %75 = sub i64 2300, %74
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %78 = call i32 @mad_dump_field(i32 %66, i8* %71, i32 %76, i8* %77)
  %79 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %80 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %81 = call i32 @strlen(i8* %80)
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  %84 = call i32 @sprintf(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* @IB_PORT_LINK_WIDTH_SUPPORTED_F, align 4
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %88 = call i32 @mad_decode_field(i32* %85, i32 %86, i8* %87)
  %89 = load i32, i32* @IB_PORT_LINK_WIDTH_SUPPORTED_F, align 4
  %90 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %91 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %92 = call i32 @strlen(i8* %91)
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %96 = call i32 @strlen(i8* %95)
  %97 = sext i32 %96 to i64
  %98 = sub i64 2300, %97
  %99 = trunc i64 %98 to i32
  %100 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %101 = call i32 @mad_dump_field(i32 %89, i8* %94, i32 %99, i8* %100)
  %102 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %103 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %104 = call i32 @strlen(i8* %103)
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  %107 = call i32 @sprintf(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* @IB_PORT_LINK_WIDTH_ENABLED_F, align 4
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %111 = call i32 @mad_decode_field(i32* %108, i32 %109, i8* %110)
  %112 = load i32, i32* @IB_PORT_LINK_WIDTH_ENABLED_F, align 4
  %113 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %114 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %115 = call i32 @strlen(i8* %114)
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  %118 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %119 = call i32 @strlen(i8* %118)
  %120 = sext i32 %119 to i64
  %121 = sub i64 2300, %120
  %122 = trunc i64 %121 to i32
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %124 = call i32 @mad_dump_field(i32 %112, i8* %117, i32 %122, i8* %123)
  %125 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %126 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %127 = call i32 @strlen(i8* %126)
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = call i32 @sprintf(i8* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* @IB_PORT_LINK_WIDTH_ACTIVE_F, align 4
  %133 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %134 = call i32 @mad_decode_field(i32* %131, i32 %132, i8* %133)
  %135 = load i32, i32* @IB_PORT_LINK_WIDTH_ACTIVE_F, align 4
  %136 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %137 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %138 = call i32 @strlen(i8* %137)
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  %141 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %142 = call i32 @strlen(i8* %141)
  %143 = sext i32 %142 to i64
  %144 = sub i64 2300, %143
  %145 = trunc i64 %144 to i32
  %146 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %147 = call i32 @mad_dump_field(i32 %135, i8* %140, i32 %145, i8* %146)
  %148 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %149 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %150 = call i32 @strlen(i8* %149)
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  %153 = call i32 @sprintf(i8* %152, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* @IB_PORT_LINK_SPEED_SUPPORTED_F, align 4
  %156 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %157 = call i32 @mad_decode_field(i32* %154, i32 %155, i8* %156)
  %158 = load i32, i32* @IB_PORT_LINK_SPEED_SUPPORTED_F, align 4
  %159 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %160 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %161 = call i32 @strlen(i8* %160)
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %159, i64 %162
  %164 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %165 = call i32 @strlen(i8* %164)
  %166 = sext i32 %165 to i64
  %167 = sub i64 2300, %166
  %168 = trunc i64 %167 to i32
  %169 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %170 = call i32 @mad_dump_field(i32 %158, i8* %163, i32 %168, i8* %169)
  %171 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %172 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %173 = call i32 @strlen(i8* %172)
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %171, i64 %174
  %176 = call i32 @sprintf(i8* %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %177 = load i32*, i32** %7, align 8
  %178 = load i32, i32* @IB_PORT_LINK_SPEED_ENABLED_F, align 4
  %179 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %180 = call i32 @mad_decode_field(i32* %177, i32 %178, i8* %179)
  %181 = load i32, i32* @IB_PORT_LINK_SPEED_ENABLED_F, align 4
  %182 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %183 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %184 = call i32 @strlen(i8* %183)
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  %187 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %188 = call i32 @strlen(i8* %187)
  %189 = sext i32 %188 to i64
  %190 = sub i64 2300, %189
  %191 = trunc i64 %190 to i32
  %192 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %193 = call i32 @mad_dump_field(i32 %181, i8* %186, i32 %191, i8* %192)
  %194 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %195 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %196 = call i32 @strlen(i8* %195)
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %194, i64 %197
  %199 = call i32 @sprintf(i8* %198, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %200 = load i32*, i32** %7, align 8
  %201 = load i32, i32* @IB_PORT_LINK_SPEED_ACTIVE_F, align 4
  %202 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %203 = call i32 @mad_decode_field(i32* %200, i32 %201, i8* %202)
  %204 = load i32, i32* @IB_PORT_LINK_SPEED_ACTIVE_F, align 4
  %205 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %206 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %207 = call i32 @strlen(i8* %206)
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %205, i64 %208
  %210 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %211 = call i32 @strlen(i8* %210)
  %212 = sext i32 %211 to i64
  %213 = sub i64 2300, %212
  %214 = trunc i64 %213 to i32
  %215 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %216 = call i32 @mad_dump_field(i32 %204, i8* %209, i32 %214, i8* %215)
  %217 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %218 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %219 = call i32 @strlen(i8* %218)
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  %222 = call i32 @sprintf(i8* %221, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %223 = load i32, i32* %9, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %295

225:                                              ; preds = %5
  %226 = load i32*, i32** %7, align 8
  %227 = load i32, i32* @IB_PORT_LINK_SPEED_EXT_SUPPORTED_F, align 4
  %228 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %229 = call i32 @mad_decode_field(i32* %226, i32 %227, i8* %228)
  %230 = load i32, i32* @IB_PORT_LINK_SPEED_EXT_SUPPORTED_F, align 4
  %231 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %232 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %233 = call i32 @strlen(i8* %232)
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %231, i64 %234
  %236 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %237 = call i32 @strlen(i8* %236)
  %238 = sext i32 %237 to i64
  %239 = sub i64 2300, %238
  %240 = trunc i64 %239 to i32
  %241 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %242 = call i32 @mad_dump_field(i32 %230, i8* %235, i32 %240, i8* %241)
  %243 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %244 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %245 = call i32 @strlen(i8* %244)
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %243, i64 %246
  %248 = call i32 @sprintf(i8* %247, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %249 = load i32*, i32** %7, align 8
  %250 = load i32, i32* @IB_PORT_LINK_SPEED_EXT_ENABLED_F, align 4
  %251 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %252 = call i32 @mad_decode_field(i32* %249, i32 %250, i8* %251)
  %253 = load i32, i32* @IB_PORT_LINK_SPEED_EXT_ENABLED_F, align 4
  %254 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %255 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %256 = call i32 @strlen(i8* %255)
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %254, i64 %257
  %259 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %260 = call i32 @strlen(i8* %259)
  %261 = sext i32 %260 to i64
  %262 = sub i64 2300, %261
  %263 = trunc i64 %262 to i32
  %264 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %265 = call i32 @mad_dump_field(i32 %253, i8* %258, i32 %263, i8* %264)
  %266 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %267 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %268 = call i32 @strlen(i8* %267)
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %266, i64 %269
  %271 = call i32 @sprintf(i8* %270, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %272 = load i32*, i32** %7, align 8
  %273 = load i32, i32* @IB_PORT_LINK_SPEED_EXT_ACTIVE_F, align 4
  %274 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %275 = call i32 @mad_decode_field(i32* %272, i32 %273, i8* %274)
  %276 = load i32, i32* @IB_PORT_LINK_SPEED_EXT_ACTIVE_F, align 4
  %277 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %278 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %279 = call i32 @strlen(i8* %278)
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %277, i64 %280
  %282 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %283 = call i32 @strlen(i8* %282)
  %284 = sext i32 %283 to i64
  %285 = sub i64 2300, %284
  %286 = trunc i64 %285 to i32
  %287 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %288 = call i32 @mad_dump_field(i32 %276, i8* %281, i32 %286, i8* %287)
  %289 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %290 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %291 = call i32 @strlen(i8* %290)
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %289, i64 %292
  %294 = call i32 @sprintf(i8* %293, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %295

295:                                              ; preds = %225, %5
  %296 = load i32, i32* %10, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = load i32, i32* %8, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %389

301:                                              ; preds = %298, %295
  %302 = load i64, i64* @show_keys, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %322

304:                                              ; preds = %301
  %305 = load i32*, i32** %7, align 8
  %306 = load i32, i32* @IB_PORT_MKEY_F, align 4
  %307 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %308 = call i32 @mad_decode_field(i32* %305, i32 %306, i8* %307)
  %309 = load i32, i32* @IB_PORT_MKEY_F, align 4
  %310 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %311 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %312 = call i32 @strlen(i8* %311)
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8, i8* %310, i64 %313
  %315 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %316 = call i32 @strlen(i8* %315)
  %317 = sext i32 %316 to i64
  %318 = sub i64 2300, %317
  %319 = trunc i64 %318 to i32
  %320 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %321 = call i32 @mad_dump_field(i32 %309, i8* %314, i32 %319, i8* %320)
  br label %336

322:                                              ; preds = %301
  %323 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %324 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %325 = call i32 @strlen(i8* %324)
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i8, i8* %323, i64 %326
  %328 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %329 = call i32 @strlen(i8* %328)
  %330 = sext i32 %329 to i64
  %331 = sub i64 2300, %330
  %332 = trunc i64 %331 to i32
  %333 = load i32, i32* @IB_PORT_MKEY_F, align 4
  %334 = load i32, i32* @NOT_DISPLAYED_STR, align 4
  %335 = call i32 @snprint_field(i8* %327, i32 %332, i32 %333, i32 32, i32 %334)
  br label %336

336:                                              ; preds = %322, %304
  %337 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %338 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %339 = call i32 @strlen(i8* %338)
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8, i8* %337, i64 %340
  %342 = call i32 @sprintf(i8* %341, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %343 = load i32*, i32** %7, align 8
  %344 = load i32, i32* @IB_PORT_MKEY_LEASE_F, align 4
  %345 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %346 = call i32 @mad_decode_field(i32* %343, i32 %344, i8* %345)
  %347 = load i32, i32* @IB_PORT_MKEY_LEASE_F, align 4
  %348 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %349 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %350 = call i32 @strlen(i8* %349)
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8, i8* %348, i64 %351
  %353 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %354 = call i32 @strlen(i8* %353)
  %355 = sext i32 %354 to i64
  %356 = sub i64 2300, %355
  %357 = trunc i64 %356 to i32
  %358 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %359 = call i32 @mad_dump_field(i32 %347, i8* %352, i32 %357, i8* %358)
  %360 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %361 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %362 = call i32 @strlen(i8* %361)
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8, i8* %360, i64 %363
  %365 = call i32 @sprintf(i8* %364, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %366 = load i32*, i32** %7, align 8
  %367 = load i32, i32* @IB_PORT_MKEY_PROT_BITS_F, align 4
  %368 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %369 = call i32 @mad_decode_field(i32* %366, i32 %367, i8* %368)
  %370 = load i32, i32* @IB_PORT_MKEY_PROT_BITS_F, align 4
  %371 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %372 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %373 = call i32 @strlen(i8* %372)
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8, i8* %371, i64 %374
  %376 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %377 = call i32 @strlen(i8* %376)
  %378 = sext i32 %377 to i64
  %379 = sub i64 2300, %378
  %380 = trunc i64 %379 to i32
  %381 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %382 = call i32 @mad_dump_field(i32 %370, i8* %375, i32 %380, i8* %381)
  %383 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %384 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %385 = call i32 @strlen(i8* %384)
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i8, i8* %383, i64 %386
  %388 = call i32 @sprintf(i8* %387, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %389

389:                                              ; preds = %336, %298
  %390 = load i32*, i32** %6, align 8
  %391 = call i8* @portid2str(i32* %390)
  %392 = load i32, i32* %8, align 4
  %393 = getelementptr inbounds [2300 x i8], [2300 x i8]* %11, i64 0, i64 0
  %394 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %391, i32 %392, i8* %393)
  ret void
}

declare dso_local i32 @mad_dump_portstates(i8*, i32, i32*, i32) #1

declare dso_local i32 @mad_decode_field(i32*, i32, i8*) #1

declare dso_local i32 @mad_dump_field(i32, i8*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @snprint_field(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i8*) #1

declare dso_local i8* @portid2str(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
