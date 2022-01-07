; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_set_dbregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_set_dbregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb*, %struct.TYPE_2__* }
%struct.pcb = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.dbreg = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@_ucode32sel = common dso_local global i64 0, align 8
@DBREG_DR7_LEN_8 = common dso_local global i64 0, align 8
@VM_MAXUSER_ADDRESS = common dso_local global i32 0, align 4
@PCB_DBREGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_dbregs(%struct.thread* %0, %struct.dbreg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.dbreg*, align 8
  %6 = alloca %struct.pcb*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.dbreg* %1, %struct.dbreg** %5, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = icmp eq %struct.thread* %8, null
  br i1 %9, label %10, label %47

10:                                               ; preds = %2
  %11 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %12 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @load_dr0(i32 %15)
  %17 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %18 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @load_dr1(i32 %21)
  %23 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %24 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @load_dr2(i32 %27)
  %29 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %30 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @load_dr3(i32 %33)
  %35 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %36 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @load_dr6(i32 %39)
  %41 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %42 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 7
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @load_dr7(i32 %45)
  br label %231

47:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %83, %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %86

51:                                               ; preds = %48
  %52 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %53 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 7
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @DBREG_DR7_ACCESS(i32 %56, i32 %57)
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %3, align 4
  br label %232

62:                                               ; preds = %51
  %63 = load %struct.thread*, %struct.thread** %4, align 8
  %64 = getelementptr inbounds %struct.thread, %struct.thread* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @_ucode32sel, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %62
  %71 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %72 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 7
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @DBREG_DR7_LEN(i32 %75, i32 %76)
  %78 = load i64, i64* @DBREG_DR7_LEN_8, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %3, align 4
  br label %232

82:                                               ; preds = %70, %62
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %48

86:                                               ; preds = %48
  %87 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %88 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 6
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = and i64 %92, -4294967296
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %86
  %96 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %97 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 7
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = and i64 %101, -4294967296
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %95, %86
  %105 = load i32, i32* @EINVAL, align 4
  store i32 %105, i32* %3, align 4
  br label %232

106:                                              ; preds = %95
  %107 = load %struct.thread*, %struct.thread** %4, align 8
  %108 = getelementptr inbounds %struct.thread, %struct.thread* %107, i32 0, i32 0
  %109 = load %struct.pcb*, %struct.pcb** %108, align 8
  store %struct.pcb* %109, %struct.pcb** %6, align 8
  %110 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %111 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 7
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @DBREG_DR7_ENABLED(i32 %114, i32 0)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %106
  %118 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %119 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @VM_MAXUSER_ADDRESS, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i32, i32* @EINVAL, align 4
  store i32 %126, i32* %3, align 4
  br label %232

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127, %106
  %129 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %130 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 7
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @DBREG_DR7_ENABLED(i32 %133, i32 1)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %128
  %137 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %138 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @VM_MAXUSER_ADDRESS, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %136
  %145 = load i32, i32* @EINVAL, align 4
  store i32 %145, i32* %3, align 4
  br label %232

146:                                              ; preds = %136
  br label %147

147:                                              ; preds = %146, %128
  %148 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %149 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 7
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @DBREG_DR7_ENABLED(i32 %152, i32 2)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %147
  %156 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %157 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @VM_MAXUSER_ADDRESS, align 4
  %162 = icmp sge i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %155
  %164 = load i32, i32* @EINVAL, align 4
  store i32 %164, i32* %3, align 4
  br label %232

165:                                              ; preds = %155
  br label %166

166:                                              ; preds = %165, %147
  %167 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %168 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 7
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @DBREG_DR7_ENABLED(i32 %171, i32 3)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %166
  %175 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %176 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 3
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @VM_MAXUSER_ADDRESS, align 4
  %181 = icmp sge i32 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %174
  %183 = load i32, i32* @EINVAL, align 4
  store i32 %183, i32* %3, align 4
  br label %232

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %184, %166
  %186 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %187 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.pcb*, %struct.pcb** %6, align 8
  %192 = getelementptr inbounds %struct.pcb, %struct.pcb* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 4
  %193 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %194 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.pcb*, %struct.pcb** %6, align 8
  %199 = getelementptr inbounds %struct.pcb, %struct.pcb* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %201 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 2
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.pcb*, %struct.pcb** %6, align 8
  %206 = getelementptr inbounds %struct.pcb, %struct.pcb* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 4
  %207 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %208 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.pcb*, %struct.pcb** %6, align 8
  %213 = getelementptr inbounds %struct.pcb, %struct.pcb* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 4
  %214 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %215 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 6
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.pcb*, %struct.pcb** %6, align 8
  %220 = getelementptr inbounds %struct.pcb, %struct.pcb* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 4
  %221 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %222 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 7
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.pcb*, %struct.pcb** %6, align 8
  %227 = getelementptr inbounds %struct.pcb, %struct.pcb* %226, i32 0, i32 5
  store i32 %225, i32* %227, align 4
  %228 = load %struct.pcb*, %struct.pcb** %6, align 8
  %229 = load i32, i32* @PCB_DBREGS, align 4
  %230 = call i32 @set_pcb_flags(%struct.pcb* %228, i32 %229)
  br label %231

231:                                              ; preds = %185, %10
  store i32 0, i32* %3, align 4
  br label %232

232:                                              ; preds = %231, %182, %163, %144, %125, %104, %80, %60
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i32 @load_dr0(i32) #1

declare dso_local i32 @load_dr1(i32) #1

declare dso_local i32 @load_dr2(i32) #1

declare dso_local i32 @load_dr3(i32) #1

declare dso_local i32 @load_dr6(i32) #1

declare dso_local i32 @load_dr7(i32) #1

declare dso_local i32 @DBREG_DR7_ACCESS(i32, i32) #1

declare dso_local i64 @DBREG_DR7_LEN(i32, i32) #1

declare dso_local i64 @DBREG_DR7_ENABLED(i32, i32) #1

declare dso_local i32 @set_pcb_flags(%struct.pcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
