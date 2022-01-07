; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_ace_to_aent_legal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_ace_to_aent_legal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@ACE_ACCESS_ALLOWED_ACE_TYPE = common dso_local global i64 0, align 8
@ACE_ACCESS_DENIED_ACE_TYPE = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@ACE_VALID_FLAG_BITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACE_SUCCESSFUL_ACCESS_ACE_FLAG = common dso_local global i32 0, align 4
@ACE_FAILED_ACCESS_ACE_FLAG = common dso_local global i32 0, align 4
@ACE_NO_PROPAGATE_INHERIT_ACE = common dso_local global i32 0, align 4
@ACE_VALID_MASK_BITS = common dso_local global i32 0, align 4
@ACE_OWNER = common dso_local global i32 0, align 4
@ACE_SYNCHRONIZE = common dso_local global i32 0, align 4
@ACE_WRITE_OWNER = common dso_local global i32 0, align 4
@ACE_DELETE = common dso_local global i32 0, align 4
@ACE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@ACE_READ_NAMED_ATTRS = common dso_local global i32 0, align 4
@ACE_WRITE_NAMED_ATTRS = common dso_local global i32 0, align 4
@ACE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@ACE_WRITE_DATA = common dso_local global i32 0, align 4
@ACE_APPEND_DATA = common dso_local global i32 0, align 4
@ACE_READ_ACL = common dso_local global i32 0, align 4
@ACE_WRITE_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @ace_to_aent_legal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ace_to_aent_legal(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ACE_ACCESS_ALLOWED_ACE_TYPE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ACE_ACCESS_DENIED_ACE_TYPE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @ENOTSUP, align 4
  store i32 %17, i32* %3, align 4
  br label %202

18:                                               ; preds = %10, %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ACE_VALID_FLAG_BITS, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %202

28:                                               ; preds = %18
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ACE_SUCCESSFUL_ACCESS_ACE_FLAG, align 4
  %33 = load i32, i32* @ACE_FAILED_ACCESS_ACE_FLAG, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ACE_NO_PROPAGATE_INHERIT_ACE, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %31, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @ENOTSUP, align 4
  store i32 %40, i32* %3, align 4
  br label %202

41:                                               ; preds = %28
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ACE_VALID_MASK_BITS, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %3, align 4
  br label %202

51:                                               ; preds = %41
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ACE_OWNER, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %60

59:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = load i32, i32* @ACE_SYNCHRONIZE, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @access_mask_check(%struct.TYPE_4__* %61, i32 %62, i32 %63)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %202

68:                                               ; preds = %60
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %70 = load i32, i32* @ACE_WRITE_OWNER, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @access_mask_check(%struct.TYPE_4__* %69, i32 %70, i32 %71)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %202

76:                                               ; preds = %68
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %78 = load i32, i32* @ACE_DELETE, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @access_mask_check(%struct.TYPE_4__* %77, i32 %78, i32 %79)
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %3, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %202

84:                                               ; preds = %76
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %86 = load i32, i32* @ACE_WRITE_ATTRIBUTES, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @access_mask_check(%struct.TYPE_4__* %85, i32 %86, i32 %87)
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %3, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %202

92:                                               ; preds = %84
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %94 = load i32, i32* @ACE_READ_NAMED_ATTRS, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @access_mask_check(%struct.TYPE_4__* %93, i32 %94, i32 %95)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %3, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %202

100:                                              ; preds = %92
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %102 = load i32, i32* @ACE_WRITE_NAMED_ATTRS, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @access_mask_check(%struct.TYPE_4__* %101, i32 %102, i32 %103)
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* %3, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %202

108:                                              ; preds = %100
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ACE_ACCESS_ALLOWED_ACE_TYPE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %156

114:                                              ; preds = %108
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* @ENOTSUP, align 4
  store i32 %122, i32* %3, align 4
  br label %202

123:                                              ; preds = %114
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ACE_WRITE_DATA, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %123
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ACE_APPEND_DATA, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* @ENOTSUP, align 4
  store i32 %138, i32* %3, align 4
  br label %202

139:                                              ; preds = %130, %123
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @ACE_WRITE_DATA, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %155, label %146

146:                                              ; preds = %139
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @ACE_APPEND_DATA, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = load i32, i32* @ENOTSUP, align 4
  store i32 %154, i32* %3, align 4
  br label %202

155:                                              ; preds = %146, %139
  br label %156

156:                                              ; preds = %155, %108
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @ACE_READ_ACL, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %156
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @ACE_ACCESS_ALLOWED_ACE_TYPE, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32, i32* @ENOTSUP, align 4
  store i32 %170, i32* %3, align 4
  br label %202

171:                                              ; preds = %163, %156
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @ACE_WRITE_ACL, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %201

178:                                              ; preds = %171
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @ACE_ACCESS_DENIED_ACE_TYPE, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load i32, i32* %4, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = load i32, i32* @ENOTSUP, align 4
  store i32 %188, i32* %3, align 4
  br label %202

189:                                              ; preds = %184, %178
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @ACE_ACCESS_ALLOWED_ACE_TYPE, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load i32, i32* %4, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* @ENOTSUP, align 4
  store i32 %199, i32* %3, align 4
  br label %202

200:                                              ; preds = %195, %189
  br label %201

201:                                              ; preds = %200, %171
  br label %202

202:                                              ; preds = %201, %198, %187, %169, %153, %137, %121, %107, %99, %91, %83, %75, %67, %49, %39, %26, %16
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @access_mask_check(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
