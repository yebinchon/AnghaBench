; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_access_mask_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_access_mask_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ACE_ACCESS_DENIED_ACE_TYPE = common dso_local global i32 0, align 4
@ACE_WRITE_DATA = common dso_local global i32 0, align 4
@ACE_READ_DATA = common dso_local global i32 0, align 4
@ACL_SYNCHRONIZE_ERR_DENY = common dso_local global i32 0, align 4
@ACL_DELETE_ERR_DENY = common dso_local global i32 0, align 4
@ACL_WRITE_OWNER_ERR_DENY = common dso_local global i32 0, align 4
@ACL_WRITE_OWNER_ERR_ALLOW = common dso_local global i32 0, align 4
@ACL_WRITE_ATTRS_OWNER_SET_ALLOW = common dso_local global i32 0, align 4
@ACL_WRITE_ATTRS_OWNER_ERR_DENY = common dso_local global i32 0, align 4
@ACL_WRITE_ATTRS_WRITER_SET_DENY = common dso_local global i32 0, align 4
@ACL_WRITE_ATTRS_WRITER_ERR_ALLOW = common dso_local global i32 0, align 4
@ACL_WRITE_NAMED_WRITER_ERR_DENY = common dso_local global i32 0, align 4
@ACL_READ_NAMED_READER_ERR_DENY = common dso_local global i32 0, align 4
@ACE_SYNCHRONIZE = common dso_local global i32 0, align 4
@ACL_SYNCHRONIZE_SET_DENY = common dso_local global i32 0, align 4
@ACL_SYNCHRONIZE_SET_ALLOW = common dso_local global i32 0, align 4
@ACL_SYNCHRONIZE_ERR_ALLOW = common dso_local global i32 0, align 4
@ACE_WRITE_OWNER = common dso_local global i32 0, align 4
@ACL_WRITE_OWNER_SET_DENY = common dso_local global i32 0, align 4
@ACL_WRITE_OWNER_SET_ALLOW = common dso_local global i32 0, align 4
@ACE_DELETE = common dso_local global i32 0, align 4
@ACL_DELETE_SET_DENY = common dso_local global i32 0, align 4
@ACL_DELETE_SET_ALLOW = common dso_local global i32 0, align 4
@ACL_DELETE_ERR_ALLOW = common dso_local global i32 0, align 4
@ACE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@ACL_WRITE_ATTRS_OWNER_SET_DENY = common dso_local global i32 0, align 4
@ACL_WRITE_ATTRS_OWNER_ERR_ALLOW = common dso_local global i32 0, align 4
@ACL_WRITE_ATTRS_WRITER_ERR_DENY = common dso_local global i32 0, align 4
@ACL_WRITE_ATTRS_WRITER_SET_ALLOW = common dso_local global i32 0, align 4
@ACE_ACCESS_ALLOWED_ACE_TYPE = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ACE_READ_NAMED_ATTRS = common dso_local global i32 0, align 4
@ACL_READ_NAMED_READER_SET_DENY = common dso_local global i32 0, align 4
@ACL_READ_NAMED_READER_SET_ALLOW = common dso_local global i32 0, align 4
@ACL_READ_NAMED_READER_ERR_ALLOW = common dso_local global i32 0, align 4
@ACE_WRITE_NAMED_ATTRS = common dso_local global i32 0, align 4
@ACL_WRITE_NAMED_WRITER_SET_DENY = common dso_local global i32 0, align 4
@ACL_WRITE_NAMED_WRITER_SET_ALLOW = common dso_local global i32 0, align 4
@ACL_WRITE_NAMED_WRITER_ERR_ALLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @access_mask_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_mask_check(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ACE_ACCESS_DENIED_ACE_TYPE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ACE_WRITE_DATA, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 0, i32 1
  store i32 %28, i32* %13, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ACE_READ_DATA, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 1
  store i32 %36, i32* %14, align 4
  br label %54

37:                                               ; preds = %3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ACE_WRITE_DATA, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  store i32 %45, i32* %13, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ACE_READ_DATA, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %37, %20
  %55 = load i32, i32* @ACL_SYNCHRONIZE_ERR_DENY, align 4
  %56 = load i32, i32* @ACL_DELETE_ERR_DENY, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @ACL_WRITE_OWNER_ERR_DENY, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @ACL_WRITE_OWNER_ERR_ALLOW, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @ACL_WRITE_ATTRS_OWNER_SET_ALLOW, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @ACL_WRITE_ATTRS_OWNER_ERR_DENY, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @ACL_WRITE_ATTRS_WRITER_SET_DENY, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @ACL_WRITE_ATTRS_WRITER_ERR_ALLOW, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @ACL_WRITE_NAMED_WRITER_ERR_DENY, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @ACL_READ_NAMED_READER_ERR_DENY, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @ACE_SYNCHRONIZE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %54
  %78 = load i32, i32* @ACL_SYNCHRONIZE_SET_DENY, align 4
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* @ACL_SYNCHRONIZE_ERR_DENY, align 4
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* @ACL_SYNCHRONIZE_SET_ALLOW, align 4
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* @ACL_SYNCHRONIZE_ERR_ALLOW, align 4
  store i32 %81, i32* %11, align 4
  br label %172

82:                                               ; preds = %54
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @ACE_WRITE_OWNER, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* @ACL_WRITE_OWNER_SET_DENY, align 4
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* @ACL_WRITE_OWNER_ERR_DENY, align 4
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* @ACL_WRITE_OWNER_SET_ALLOW, align 4
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* @ACL_WRITE_OWNER_ERR_ALLOW, align 4
  store i32 %90, i32* %11, align 4
  br label %171

91:                                               ; preds = %82
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @ACE_DELETE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32, i32* @ACL_DELETE_SET_DENY, align 4
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* @ACL_DELETE_ERR_DENY, align 4
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* @ACL_DELETE_SET_ALLOW, align 4
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* @ACL_DELETE_ERR_ALLOW, align 4
  store i32 %99, i32* %11, align 4
  br label %170

100:                                              ; preds = %91
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @ACE_WRITE_ATTRIBUTES, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %139

104:                                              ; preds = %100
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i32, i32* @ACL_WRITE_ATTRS_OWNER_SET_DENY, align 4
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* @ACL_WRITE_ATTRS_OWNER_ERR_DENY, align 4
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* @ACL_WRITE_ATTRS_OWNER_SET_ALLOW, align 4
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* @ACL_WRITE_ATTRS_OWNER_ERR_ALLOW, align 4
  store i32 %111, i32* %11, align 4
  br label %138

112:                                              ; preds = %104
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, i32* @ACL_WRITE_ATTRS_WRITER_SET_DENY, align 4
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* @ACL_WRITE_ATTRS_WRITER_ERR_DENY, align 4
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* @ACL_WRITE_ATTRS_WRITER_SET_ALLOW, align 4
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* @ACL_WRITE_ATTRS_WRITER_ERR_ALLOW, align 4
  store i32 %119, i32* %11, align 4
  br label %137

120:                                              ; preds = %112
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %6, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load i32, i32* @ENOTSUP, align 4
  store i32 %135, i32* %4, align 4
  br label %243

136:                                              ; preds = %127, %120
  store i32 0, i32* %4, align 4
  br label %243

137:                                              ; preds = %115
  br label %138

138:                                              ; preds = %137, %107
  br label %169

139:                                              ; preds = %100
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @ACE_READ_NAMED_ATTRS, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %139
  %144 = load i32, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  br label %243

147:                                              ; preds = %143
  %148 = load i32, i32* @ACL_READ_NAMED_READER_SET_DENY, align 4
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* @ACL_READ_NAMED_READER_ERR_DENY, align 4
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* @ACL_READ_NAMED_READER_SET_ALLOW, align 4
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* @ACL_READ_NAMED_READER_ERR_ALLOW, align 4
  store i32 %151, i32* %11, align 4
  br label %168

152:                                              ; preds = %139
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @ACE_WRITE_NAMED_ATTRS, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = load i32, i32* %13, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %156
  store i32 0, i32* %4, align 4
  br label %243

160:                                              ; preds = %156
  %161 = load i32, i32* @ACL_WRITE_NAMED_WRITER_SET_DENY, align 4
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* @ACL_WRITE_NAMED_WRITER_ERR_DENY, align 4
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* @ACL_WRITE_NAMED_WRITER_SET_ALLOW, align 4
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* @ACL_WRITE_NAMED_WRITER_ERR_ALLOW, align 4
  store i32 %164, i32* %11, align 4
  br label %167

165:                                              ; preds = %152
  %166 = load i32, i32* @EINVAL, align 4
  store i32 %166, i32* %4, align 4
  br label %243

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %167, %147
  br label %169

169:                                              ; preds = %168, %138
  br label %170

170:                                              ; preds = %169, %95
  br label %171

171:                                              ; preds = %170, %86
  br label %172

172:                                              ; preds = %171, %77
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @ACE_ACCESS_DENIED_ACE_TYPE, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %210

178:                                              ; preds = %172
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %8, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %178
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %6, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %183
  %191 = load i32, i32* @ENOTSUP, align 4
  store i32 %191, i32* %4, align 4
  br label %243

192:                                              ; preds = %183
  br label %209

193:                                              ; preds = %178
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %9, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %193
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %6, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %198
  %206 = load i32, i32* @ENOTSUP, align 4
  store i32 %206, i32* %4, align 4
  br label %243

207:                                              ; preds = %198
  br label %208

208:                                              ; preds = %207, %193
  br label %209

209:                                              ; preds = %208, %192
  br label %242

210:                                              ; preds = %172
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* %10, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %210
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %6, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %215
  %223 = load i32, i32* @ENOTSUP, align 4
  store i32 %223, i32* %4, align 4
  br label %243

224:                                              ; preds = %215
  br label %241

225:                                              ; preds = %210
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* %11, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %240

230:                                              ; preds = %225
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %6, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %230
  %238 = load i32, i32* @ENOTSUP, align 4
  store i32 %238, i32* %4, align 4
  br label %243

239:                                              ; preds = %230
  br label %240

240:                                              ; preds = %239, %225
  br label %241

241:                                              ; preds = %240, %224
  br label %242

242:                                              ; preds = %241, %209
  store i32 0, i32* %4, align 4
  br label %243

243:                                              ; preds = %242, %237, %222, %205, %190, %165, %159, %146, %136, %134
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
