; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_auth/extr_eapol_auth_sm.c_eapol_auth_conf_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_auth/extr_eapol_auth_sm.c_eapol_auth_conf_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_auth_config = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eapol_auth_config*, %struct.eapol_auth_config*)* @eapol_auth_conf_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eapol_auth_conf_clone(%struct.eapol_auth_config* %0, %struct.eapol_auth_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eapol_auth_config*, align 8
  %5 = alloca %struct.eapol_auth_config*, align 8
  store %struct.eapol_auth_config* %0, %struct.eapol_auth_config** %4, align 8
  store %struct.eapol_auth_config* %1, %struct.eapol_auth_config** %5, align 8
  %6 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %7 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %6, i32 0, i32 32
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %10 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %9, i32 0, i32 32
  store i32 %8, i32* %10, align 4
  %11 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %12 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %11, i32 0, i32 31
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %15 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %14, i32 0, i32 31
  store i32 %13, i32* %15, align 8
  %16 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %17 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %16, i32 0, i32 30
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %20 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %19, i32 0, i32 30
  store i32 %18, i32* %20, align 4
  %21 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %22 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %21, i32 0, i32 29
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %25 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %24, i32 0, i32 29
  store i32 %23, i32* %25, align 8
  %26 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %27 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %26, i32 0, i32 28
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %30 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %29, i32 0, i32 28
  store i32 %28, i32* %30, align 4
  %31 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %32 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %31, i32 0, i32 27
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %35 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %34, i32 0, i32 27
  store i32 %33, i32* %35, align 8
  %36 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %37 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %36, i32 0, i32 26
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %40 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %39, i32 0, i32 26
  store i32 %38, i32* %40, align 4
  %41 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %42 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %41, i32 0, i32 25
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %45 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %44, i32 0, i32 25
  store i32 %43, i32* %45, align 8
  %46 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %47 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %46, i32 0, i32 20
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @os_free(i32* %48)
  %50 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %51 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %50, i32 0, i32 24
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %54 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %53, i32 0, i32 24
  store i32 %52, i32* %54, align 4
  %55 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %56 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %55, i32 0, i32 23
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %59 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %58, i32 0, i32 23
  store i32 %57, i32* %59, align 8
  %60 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %61 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %60, i32 0, i32 22
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %64 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %63, i32 0, i32 22
  store i32 %62, i32* %64, align 4
  %65 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %66 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %65, i32 0, i32 21
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %69 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %68, i32 0, i32 21
  store i32 %67, i32* %69, align 8
  %70 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %71 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %70, i32 0, i32 20
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %96

74:                                               ; preds = %2
  %75 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %76 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %75, i32 0, i32 20
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %79 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @os_memdup(i32* %77, i32 %80)
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %84 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %83, i32 0, i32 20
  store i32* %82, i32** %84, align 8
  %85 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %86 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %85, i32 0, i32 20
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %74
  store i32 -1, i32* %3, align 4
  br label %275

90:                                               ; preds = %74
  %91 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %92 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %95 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %101

96:                                               ; preds = %2
  %97 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %98 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %97, i32 0, i32 20
  store i32* null, i32** %98, align 8
  %99 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %100 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  br label %101

101:                                              ; preds = %96, %90
  %102 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %103 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %102, i32 0, i32 19
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %120

106:                                              ; preds = %101
  %107 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %108 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %107, i32 0, i32 19
  %109 = load i32*, i32** %108, align 8
  %110 = call i8* @os_memdup(i32* %109, i32 16)
  %111 = bitcast i8* %110 to i32*
  %112 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %113 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %112, i32 0, i32 19
  store i32* %111, i32** %113, align 8
  %114 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %115 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %114, i32 0, i32 19
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  br label %272

119:                                              ; preds = %106
  br label %123

120:                                              ; preds = %101
  %121 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %122 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %121, i32 0, i32 19
  store i32* null, i32** %122, align 8
  br label %123

123:                                              ; preds = %120, %119
  %124 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %125 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %124, i32 0, i32 18
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %150

128:                                              ; preds = %123
  %129 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %130 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %129, i32 0, i32 18
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %133 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @os_memdup(i32* %131, i32 %134)
  %136 = bitcast i8* %135 to i32*
  %137 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %138 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %137, i32 0, i32 18
  store i32* %136, i32** %138, align 8
  %139 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %140 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %139, i32 0, i32 18
  %141 = load i32*, i32** %140, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %128
  br label %272

144:                                              ; preds = %128
  %145 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %146 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %149 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  br label %153

150:                                              ; preds = %123
  %151 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %152 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %151, i32 0, i32 18
  store i32* null, i32** %152, align 8
  br label %153

153:                                              ; preds = %150, %144
  %154 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %155 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %154, i32 0, i32 17
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %172

158:                                              ; preds = %153
  %159 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %160 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %159, i32 0, i32 17
  %161 = load i32*, i32** %160, align 8
  %162 = call i8* @os_strdup(i32* %161)
  %163 = bitcast i8* %162 to i32*
  %164 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %165 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %164, i32 0, i32 17
  store i32* %163, i32** %165, align 8
  %166 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %167 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %166, i32 0, i32 17
  %168 = load i32*, i32** %167, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %158
  br label %272

171:                                              ; preds = %158
  br label %175

172:                                              ; preds = %153
  %173 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %174 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %173, i32 0, i32 17
  store i32* null, i32** %174, align 8
  br label %175

175:                                              ; preds = %172, %171
  %176 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %177 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %176, i32 0, i32 16
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %180 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %179, i32 0, i32 16
  store i32 %178, i32* %180, align 4
  %181 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %182 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %181, i32 0, i32 15
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %185 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %184, i32 0, i32 15
  store i32 %183, i32* %185, align 8
  %186 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %187 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %186, i32 0, i32 14
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %190 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %189, i32 0, i32 14
  store i32 %188, i32* %190, align 4
  %191 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %192 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %191, i32 0, i32 13
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %195 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %194, i32 0, i32 13
  store i32 %193, i32* %195, align 8
  %196 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %197 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %196, i32 0, i32 12
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %200 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %199, i32 0, i32 12
  store i32 %198, i32* %200, align 4
  %201 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %202 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %201, i32 0, i32 11
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %205 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %204, i32 0, i32 11
  store i32 %203, i32* %205, align 8
  %206 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %207 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %206, i32 0, i32 10
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %210 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %209, i32 0, i32 10
  store i32 %208, i32* %210, align 4
  %211 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %212 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %211, i32 0, i32 9
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %215 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %214, i32 0, i32 9
  store i32 %213, i32* %215, align 8
  %216 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %217 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %216, i32 0, i32 8
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %220 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %219, i32 0, i32 8
  store i32 %218, i32* %220, align 4
  %221 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %222 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %225 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %224, i32 0, i32 7
  store i32 %223, i32* %225, align 8
  %226 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %227 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %226, i32 0, i32 6
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @os_free(i32* %228)
  %230 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %231 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %230, i32 0, i32 6
  %232 = load i32*, i32** %231, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %234, label %248

234:                                              ; preds = %175
  %235 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %236 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %235, i32 0, i32 6
  %237 = load i32*, i32** %236, align 8
  %238 = call i8* @os_strdup(i32* %237)
  %239 = bitcast i8* %238 to i32*
  %240 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %241 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %240, i32 0, i32 6
  store i32* %239, i32** %241, align 8
  %242 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %243 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %242, i32 0, i32 6
  %244 = load i32*, i32** %243, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %246, label %247

246:                                              ; preds = %234
  br label %272

247:                                              ; preds = %234
  br label %251

248:                                              ; preds = %175
  %249 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %250 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %249, i32 0, i32 6
  store i32* null, i32** %250, align 8
  br label %251

251:                                              ; preds = %248, %247
  %252 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %253 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %256 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %255, i32 0, i32 5
  store i32 %254, i32* %256, align 4
  %257 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %258 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %261 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %260, i32 0, i32 4
  store i32 %259, i32* %261, align 8
  %262 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %263 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %266 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %265, i32 0, i32 3
  store i32 %264, i32* %266, align 4
  %267 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %5, align 8
  %268 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %271 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %270, i32 0, i32 2
  store i32 %269, i32* %271, align 8
  store i32 0, i32* %3, align 4
  br label %275

272:                                              ; preds = %246, %170, %143, %118
  %273 = load %struct.eapol_auth_config*, %struct.eapol_auth_config** %4, align 8
  %274 = call i32 @eapol_auth_conf_free(%struct.eapol_auth_config* %273)
  store i32 -1, i32* %3, align 4
  br label %275

275:                                              ; preds = %272, %251, %89
  %276 = load i32, i32* %3, align 4
  ret i32 %276
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i8* @os_memdup(i32*, i32) #1

declare dso_local i8* @os_strdup(i32*) #1

declare dso_local i32 @eapol_auth_conf_free(%struct.eapol_auth_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
