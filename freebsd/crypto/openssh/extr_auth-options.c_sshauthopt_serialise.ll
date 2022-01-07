; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-options.c_sshauthopt_serialise.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-options.c_sshauthopt_serialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshauthopt = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.sshbuf = type { i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshauthopt_serialise(%struct.sshauthopt* %0, %struct.sshbuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshauthopt*, align 8
  %6 = alloca %struct.sshbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sshauthopt* %0, %struct.sshauthopt** %5, align 8
  store %struct.sshbuf* %1, %struct.sshbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %11 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %12 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @sshbuf_put_u8(%struct.sshbuf* %10, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %65, label %16

16:                                               ; preds = %3
  %17 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %18 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %19 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sshbuf_put_u8(%struct.sshbuf* %17, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %65, label %23

23:                                               ; preds = %16
  %24 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %25 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %26 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @sshbuf_put_u8(%struct.sshbuf* %24, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %65, label %30

30:                                               ; preds = %23
  %31 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %32 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %33 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sshbuf_put_u8(%struct.sshbuf* %31, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %30
  %38 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %39 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %40 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sshbuf_put_u8(%struct.sshbuf* %38, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %65, label %44

44:                                               ; preds = %37
  %45 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %46 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %47 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sshbuf_put_u8(%struct.sshbuf* %45, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %44
  %52 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %53 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %54 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @sshbuf_put_u8(%struct.sshbuf* %52, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %60 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %61 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %60, i32 0, i32 18
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @sshbuf_put_u64(%struct.sshbuf* %59, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58, %51, %44, %37, %30, %23, %16, %3
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %198

67:                                               ; preds = %58
  %68 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %69 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %70 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, -1
  %73 = zext i1 %72 to i32
  %74 = call i32 @sshbuf_put_u8(%struct.sshbuf* %68, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %67
  %77 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %78 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %79 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %87

83:                                               ; preds = %76
  %84 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %85 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  br label %87

87:                                               ; preds = %83, %82
  %88 = phi i32 [ 0, %82 ], [ %86, %83 ]
  %89 = call i32 @sshbuf_put_u32(%struct.sshbuf* %77, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87, %67
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %4, align 4
  br label %198

93:                                               ; preds = %87
  %94 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %102

98:                                               ; preds = %93
  %99 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %100 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %99, i32 0, i32 8
  %101 = load i8*, i8** %100, align 8
  br label %102

102:                                              ; preds = %98, %97
  %103 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %97 ], [ %101, %98 ]
  %104 = call i32 @serialise_nullable_string(%struct.sshbuf* %94, i8* %103)
  store i32 %104, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %145, label %106

106:                                              ; preds = %102
  %107 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %115

111:                                              ; preds = %106
  %112 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %113 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %112, i32 0, i32 9
  %114 = load i8*, i8** %113, align 8
  br label %115

115:                                              ; preds = %111, %110
  %116 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %110 ], [ %114, %111 ]
  %117 = call i32 @serialise_nullable_string(%struct.sshbuf* %107, i8* %116)
  store i32 %117, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %145, label %119

119:                                              ; preds = %115
  %120 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %128

124:                                              ; preds = %119
  %125 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %126 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %125, i32 0, i32 10
  %127 = load i8*, i8** %126, align 8
  br label %128

128:                                              ; preds = %124, %123
  %129 = phi i8* [ null, %123 ], [ %127, %124 ]
  %130 = call i32 @serialise_nullable_string(%struct.sshbuf* %120, i8* %129)
  store i32 %130, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %145, label %132

132:                                              ; preds = %128
  %133 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %141

137:                                              ; preds = %132
  %138 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %139 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %138, i32 0, i32 11
  %140 = load i8*, i8** %139, align 8
  br label %141

141:                                              ; preds = %137, %136
  %142 = phi i8* [ null, %136 ], [ %140, %137 ]
  %143 = call i32 @serialise_nullable_string(%struct.sshbuf* %133, i8* %142)
  store i32 %143, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141, %128, %115, %102
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %4, align 4
  br label %198

147:                                              ; preds = %141
  %148 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %149 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %150 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %149, i32 0, i32 17
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %159

155:                                              ; preds = %147
  %156 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %157 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %156, i32 0, i32 16
  %158 = load i32, i32* %157, align 8
  br label %159

159:                                              ; preds = %155, %154
  %160 = phi i32 [ 0, %154 ], [ %158, %155 ]
  %161 = call i32 @serialise_array(%struct.sshbuf* %148, i32 %151, i32 %160)
  store i32 %161, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %195, label %163

163:                                              ; preds = %159
  %164 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %165 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %166 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %165, i32 0, i32 15
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  br label %175

171:                                              ; preds = %163
  %172 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %173 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %172, i32 0, i32 14
  %174 = load i32, i32* %173, align 8
  br label %175

175:                                              ; preds = %171, %170
  %176 = phi i32 [ 0, %170 ], [ %174, %171 ]
  %177 = call i32 @serialise_array(%struct.sshbuf* %164, i32 %167, i32 %176)
  store i32 %177, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %195, label %179

179:                                              ; preds = %175
  %180 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %181 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %182 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %181, i32 0, i32 13
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  br label %191

187:                                              ; preds = %179
  %188 = load %struct.sshauthopt*, %struct.sshauthopt** %5, align 8
  %189 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %188, i32 0, i32 12
  %190 = load i32, i32* %189, align 8
  br label %191

191:                                              ; preds = %187, %186
  %192 = phi i32 [ 0, %186 ], [ %190, %187 ]
  %193 = call i32 @serialise_array(%struct.sshbuf* %180, i32 %183, i32 %192)
  store i32 %193, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %191, %175, %159
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %4, align 4
  br label %198

197:                                              ; preds = %191
  store i32 0, i32* %4, align 4
  br label %198

198:                                              ; preds = %197, %195, %145, %91, %65
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @sshbuf_put_u8(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_u64(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_u32(%struct.sshbuf*, i32) #1

declare dso_local i32 @serialise_nullable_string(%struct.sshbuf*, i8*) #1

declare dso_local i32 @serialise_array(%struct.sshbuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
