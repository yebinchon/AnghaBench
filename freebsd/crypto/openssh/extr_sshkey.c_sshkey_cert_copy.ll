; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_cert_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_cert_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { %struct.sshkey_cert* }
%struct.sshkey_cert = type { i64, i32**, i32*, i32, i32, i32*, i32, i32, i32, i32, i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSHKEY_CERT_MAX_PRINCIPALS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_cert_copy(%struct.sshkey* %0, %struct.sshkey* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshkey*, align 8
  %5 = alloca %struct.sshkey*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sshkey_cert*, align 8
  %8 = alloca %struct.sshkey_cert*, align 8
  %9 = alloca i32, align 4
  store %struct.sshkey* %0, %struct.sshkey** %4, align 8
  store %struct.sshkey* %1, %struct.sshkey** %5, align 8
  %10 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %12 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %11, i32 0, i32 0
  %13 = load %struct.sshkey_cert*, %struct.sshkey_cert** %12, align 8
  %14 = icmp ne %struct.sshkey_cert* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %17 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %16, i32 0, i32 0
  %18 = load %struct.sshkey_cert*, %struct.sshkey_cert** %17, align 8
  %19 = call i32 @cert_free(%struct.sshkey_cert* %18)
  %20 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %21 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %20, i32 0, i32 0
  store %struct.sshkey_cert* null, %struct.sshkey_cert** %21, align 8
  br label %22

22:                                               ; preds = %15, %2
  %23 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %24 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %23, i32 0, i32 0
  %25 = load %struct.sshkey_cert*, %struct.sshkey_cert** %24, align 8
  store %struct.sshkey_cert* %25, %struct.sshkey_cert** %7, align 8
  %26 = icmp eq %struct.sshkey_cert* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %28, i32* %3, align 4
  br label %191

29:                                               ; preds = %22
  %30 = call %struct.sshkey_cert* (...) @cert_new()
  %31 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %32 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %31, i32 0, i32 0
  store %struct.sshkey_cert* %30, %struct.sshkey_cert** %32, align 8
  store %struct.sshkey_cert* %30, %struct.sshkey_cert** %8, align 8
  %33 = icmp eq %struct.sshkey_cert* %30, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %35, i32* %3, align 4
  br label %191

36:                                               ; preds = %29
  %37 = load %struct.sshkey_cert*, %struct.sshkey_cert** %8, align 8
  %38 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sshkey_cert*, %struct.sshkey_cert** %7, align 8
  %41 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @sshbuf_putb(i32 %39, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %36
  %46 = load %struct.sshkey_cert*, %struct.sshkey_cert** %8, align 8
  %47 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sshkey_cert*, %struct.sshkey_cert** %7, align 8
  %50 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sshbuf_putb(i32 %48, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %45
  %55 = load %struct.sshkey_cert*, %struct.sshkey_cert** %8, align 8
  %56 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.sshkey_cert*, %struct.sshkey_cert** %7, align 8
  %59 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @sshbuf_putb(i32 %57, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54, %45, %36
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %191

65:                                               ; preds = %54
  %66 = load %struct.sshkey_cert*, %struct.sshkey_cert** %7, align 8
  %67 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sshkey_cert*, %struct.sshkey_cert** %8, align 8
  %70 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 4
  %71 = load %struct.sshkey_cert*, %struct.sshkey_cert** %7, align 8
  %72 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sshkey_cert*, %struct.sshkey_cert** %8, align 8
  %75 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load %struct.sshkey_cert*, %struct.sshkey_cert** %7, align 8
  %77 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %76, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %65
  %81 = load %struct.sshkey_cert*, %struct.sshkey_cert** %8, align 8
  %82 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %81, i32 0, i32 5
  store i32* null, i32** %82, align 8
  br label %95

83:                                               ; preds = %65
  %84 = load %struct.sshkey_cert*, %struct.sshkey_cert** %7, align 8
  %85 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = call i8* @strdup(i32* %86)
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.sshkey_cert*, %struct.sshkey_cert** %8, align 8
  %90 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %89, i32 0, i32 5
  store i32* %88, i32** %90, align 8
  %91 = icmp eq i32* %88, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %93, i32* %3, align 4
  br label %191

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %80
  %96 = load %struct.sshkey_cert*, %struct.sshkey_cert** %7, align 8
  %97 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sshkey_cert*, %struct.sshkey_cert** %8, align 8
  %100 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load %struct.sshkey_cert*, %struct.sshkey_cert** %7, align 8
  %102 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.sshkey_cert*, %struct.sshkey_cert** %8, align 8
  %105 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load %struct.sshkey_cert*, %struct.sshkey_cert** %7, align 8
  %107 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %95
  %111 = load %struct.sshkey_cert*, %struct.sshkey_cert** %8, align 8
  %112 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %111, i32 0, i32 2
  store i32* null, i32** %112, align 8
  br label %124

113:                                              ; preds = %95
  %114 = load %struct.sshkey_cert*, %struct.sshkey_cert** %7, align 8
  %115 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.sshkey_cert*, %struct.sshkey_cert** %8, align 8
  %118 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %117, i32 0, i32 2
  %119 = call i32 @sshkey_from_private(i32* %116, i32** %118)
  store i32 %119, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %3, align 4
  br label %191

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123, %110
  %125 = load %struct.sshkey_cert*, %struct.sshkey_cert** %7, align 8
  %126 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @SSHKEY_CERT_MAX_PRINCIPALS, align 8
  %129 = icmp ugt i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %131, i32* %3, align 4
  br label %191

132:                                              ; preds = %124
  %133 = load %struct.sshkey_cert*, %struct.sshkey_cert** %7, align 8
  %134 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ugt i64 %135, 0
  br i1 %136, label %137, label %185

137:                                              ; preds = %132
  %138 = load %struct.sshkey_cert*, %struct.sshkey_cert** %7, align 8
  %139 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32** @calloc(i64 %140, i32 8)
  %142 = load %struct.sshkey_cert*, %struct.sshkey_cert** %8, align 8
  %143 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %142, i32 0, i32 1
  store i32** %141, i32*** %143, align 8
  %144 = icmp eq i32** %141, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %146, i32* %3, align 4
  br label %191

147:                                              ; preds = %137
  store i64 0, i64* %6, align 8
  br label %148

148:                                              ; preds = %181, %147
  %149 = load i64, i64* %6, align 8
  %150 = load %struct.sshkey_cert*, %struct.sshkey_cert** %7, align 8
  %151 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ult i64 %149, %152
  br i1 %153, label %154, label %184

154:                                              ; preds = %148
  %155 = load %struct.sshkey_cert*, %struct.sshkey_cert** %7, align 8
  %156 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %155, i32 0, i32 1
  %157 = load i32**, i32*** %156, align 8
  %158 = load i64, i64* %6, align 8
  %159 = getelementptr inbounds i32*, i32** %157, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = call i8* @strdup(i32* %160)
  %162 = bitcast i8* %161 to i32*
  %163 = load %struct.sshkey_cert*, %struct.sshkey_cert** %8, align 8
  %164 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %163, i32 0, i32 1
  %165 = load i32**, i32*** %164, align 8
  %166 = load i64, i64* %6, align 8
  %167 = getelementptr inbounds i32*, i32** %165, i64 %166
  store i32* %162, i32** %167, align 8
  %168 = load %struct.sshkey_cert*, %struct.sshkey_cert** %8, align 8
  %169 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %168, i32 0, i32 1
  %170 = load i32**, i32*** %169, align 8
  %171 = load i64, i64* %6, align 8
  %172 = getelementptr inbounds i32*, i32** %170, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %154
  %176 = load i64, i64* %6, align 8
  %177 = load %struct.sshkey_cert*, %struct.sshkey_cert** %8, align 8
  %178 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %177, i32 0, i32 0
  store i64 %176, i64* %178, align 8
  %179 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %179, i32* %3, align 4
  br label %191

180:                                              ; preds = %154
  br label %181

181:                                              ; preds = %180
  %182 = load i64, i64* %6, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %6, align 8
  br label %148

184:                                              ; preds = %148
  br label %185

185:                                              ; preds = %184, %132
  %186 = load %struct.sshkey_cert*, %struct.sshkey_cert** %7, align 8
  %187 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.sshkey_cert*, %struct.sshkey_cert** %8, align 8
  %190 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %189, i32 0, i32 0
  store i64 %188, i64* %190, align 8
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %185, %175, %145, %130, %121, %92, %63, %34, %27
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @cert_free(%struct.sshkey_cert*) #1

declare dso_local %struct.sshkey_cert* @cert_new(...) #1

declare dso_local i32 @sshbuf_putb(i32, i32) #1

declare dso_local i8* @strdup(i32*) #1

declare dso_local i32 @sshkey_from_private(i32*, i32**) #1

declare dso_local i32** @calloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
