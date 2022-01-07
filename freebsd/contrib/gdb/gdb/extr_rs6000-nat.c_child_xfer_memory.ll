; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_child_xfer_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_child_xfer_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_attrib = type { i32 }
%struct.target_ops = type { i32 }

@QUIT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@PT_WRITE_D = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @child_xfer_memory(i32 %0, i8* %1, i32 %2, i32 %3, %struct.mem_attrib* %4, %struct.target_ops* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mem_attrib*, align 8
  %13 = alloca %struct.target_ops*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.mem_attrib* %4, %struct.mem_attrib** %12, align 8
  store %struct.target_ops* %5, %struct.target_ops** %13, align 8
  store i32 3, i32* %14, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %14, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* %15, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32, i32* %14, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* %14, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i64 @alloca(i32 %40)
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %17, align 8
  %43 = call i32 (...) @ARCH64()
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %88, label %46

46:                                               ; preds = %6
  store i32 0, i32* %19, align 4
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load i32, i32* %15, align 4
  %53 = load i32*, i32** %17, align 8
  %54 = load i32, i32* %19, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %18, align 4
  %58 = call i32 @read_word(i32 %52, i32* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %189

61:                                               ; preds = %51
  %62 = load i32, i32* @QUIT, align 4
  br label %63

63:                                               ; preds = %61
  %64 = load i32, i32* %19, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %67, 4
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %15, align 4
  br label %47

70:                                               ; preds = %47
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %15, align 4
  %78 = load i8*, i8** %9, align 8
  %79 = load i32*, i32** %17, align 8
  %80 = bitcast i32* %79 to i8*
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %15, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @memcpy(i8* %78, i8* %85, i32 %86)
  br label %187

88:                                               ; preds = %6
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i32, i32* %15, align 4
  %94 = load i32*, i32** %17, align 8
  %95 = load i32, i32* %18, align 4
  %96 = call i32 @read_word(i32 %93, i32* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  store i32 0, i32* %7, align 4
  br label %189

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %88
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = add i64 %102, %105
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = icmp ugt i64 %106, %110
  br i1 %111, label %112, label %131

112:                                              ; preds = %100
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* %16, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 4
  %119 = add i64 %114, %118
  %120 = trunc i64 %119 to i32
  %121 = load i32*, i32** %17, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = getelementptr inbounds i32, i32* %124, i64 -1
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @read_word(i32 %120, i32* %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %112
  store i32 0, i32* %7, align 4
  br label %189

130:                                              ; preds = %112
  br label %131

131:                                              ; preds = %130, %100
  %132 = load i32*, i32** %17, align 8
  %133 = bitcast i32* %132 to i8*
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %15, align 4
  %136 = sub nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %133, i64 %137
  %139 = load i8*, i8** %9, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @memcpy(i8* %138, i8* %139, i32 %140)
  store i32 0, i32* %19, align 4
  store i64 0, i64* @errno, align 8
  br label %142

142:                                              ; preds = %179, %131
  %143 = load i32, i32* %19, align 4
  %144 = load i32, i32* %16, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %186

146:                                              ; preds = %142
  %147 = load i32, i32* %18, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %146
  %150 = load i32, i32* @PT_WRITE_D, align 4
  %151 = load i32, i32* @inferior_ptid, align 4
  %152 = call i32 @PIDGET(i32 %151)
  %153 = load i32, i32* %15, align 4
  %154 = load i32*, i32** %17, align 8
  %155 = load i32, i32* %19, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @rs6000_ptrace64(i32 %150, i32 %152, i32 %153, i32 %158, i32* null)
  br label %173

160:                                              ; preds = %146
  %161 = load i32, i32* @PT_WRITE_D, align 4
  %162 = load i32, i32* @inferior_ptid, align 4
  %163 = call i32 @PIDGET(i32 %162)
  %164 = load i32, i32* %15, align 4
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i32*
  %167 = load i32*, i32** %17, align 8
  %168 = load i32, i32* %19, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @rs6000_ptrace32(i32 %161, i32 %163, i32* %166, i32 %171, i32* null)
  br label %173

173:                                              ; preds = %160, %149
  %174 = load i64, i64* @errno, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  store i32 0, i32* %7, align 4
  br label %189

177:                                              ; preds = %173
  %178 = load i32, i32* @QUIT, align 4
  br label %179

179:                                              ; preds = %177
  %180 = load i32, i32* %19, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %19, align 4
  %182 = load i32, i32* %15, align 4
  %183 = sext i32 %182 to i64
  %184 = add i64 %183, 4
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %15, align 4
  br label %142

186:                                              ; preds = %142
  br label %187

187:                                              ; preds = %186, %70
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %7, align 4
  br label %189

189:                                              ; preds = %187, %176, %129, %98, %60
  %190 = load i32, i32* %7, align 4
  ret i32 %190
}

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @ARCH64(...) #1

declare dso_local i32 @read_word(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @rs6000_ptrace64(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @rs6000_ptrace32(i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
