; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dol.c_Dword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dol.c_Dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_buf = type { i32*, i32 }
%struct.Strbuf = type { i32*, i32 }

@Strbuf_free = common dso_local global i32 0, align 4
@DODOL = common dso_local global i32 0, align 4
@ERR_UNMATCHED = common dso_local global i32 0, align 4
@QUOTE = common dso_local global i32 0, align 4
@TRIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_buf*)* @Dword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Dword(%struct.blk_buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.blk_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.Strbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.blk_buf* %0, %struct.blk_buf** %3, align 8
  %10 = call %struct.blk_buf* (...) @Strbuf_alloc()
  %11 = bitcast %struct.blk_buf* %10 to %struct.Strbuf*
  store %struct.Strbuf* %11, %struct.Strbuf** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %13 = bitcast %struct.Strbuf* %12 to %struct.blk_buf*
  %14 = load i32, i32* @Strbuf_free, align 4
  %15 = call i32 @cleanup_push(%struct.blk_buf* %13, i32 %14)
  br label %16

16:                                               ; preds = %167, %153, %145, %31, %1
  %17 = load i32, i32* @DODOL, align 4
  %18 = call i32 @DgetC(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %158 [
    i32 128, label %20
    i32 10, label %30
    i32 32, label %31
    i32 9, label %31
    i32 96, label %32
    i32 39, label %38
    i32 34, label %38
    i32 92, label %146
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %25 = bitcast %struct.Strbuf* %24 to %struct.blk_buf*
  %26 = call i32 @cleanup_until(%struct.blk_buf* %25)
  store i32 0, i32* %2, align 4
  br label %184

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @unDredc(i32 %28)
  br label %30

30:                                               ; preds = %16, %27
  br label %168

31:                                               ; preds = %16, %16
  br label %16

32:                                               ; preds = %16
  %33 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %34 = bitcast %struct.Strbuf* %33 to %struct.blk_buf*
  %35 = load i32, i32* %4, align 4
  %36 = trunc i32 %35 to i8
  %37 = call i32 @Strbuf_append1(%struct.blk_buf* %34, i8 signext %36)
  br label %38

38:                                               ; preds = %16, %16, %32
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 34
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @DODOL, align 4
  br label %45

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %131, %45
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @DgetC(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %132

54:                                               ; preds = %47
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 10
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 128
  br i1 %59, label %60, label %66

60:                                               ; preds = %57, %54
  %61 = load %struct.blk_buf*, %struct.blk_buf** %3, align 8
  %62 = call i32 @cleanup_until(%struct.blk_buf* %61)
  %63 = load i32, i32* @ERR_UNMATCHED, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @stderror(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %57
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @QUOTE, align 4
  %69 = load i32, i32* @TRIM, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = load i32, i32* @QUOTE, align 4
  %73 = or i32 10, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %66
  %76 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %77 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %75
  %81 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %82 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %85 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %83, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @TRIM, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 92
  br i1 %93, label %94, label %99

94:                                               ; preds = %80
  %95 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %96 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %94, %80, %75
  br label %100

100:                                              ; preds = %99, %66
  %101 = load i32, i32* %5, align 4
  switch i32 %101, label %130 [
    i32 34, label %102
    i32 39, label %116
    i32 96, label %124
  ]

102:                                              ; preds = %100
  %103 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %104 = bitcast %struct.Strbuf* %103 to %struct.blk_buf*
  %105 = load i32, i32* %4, align 4
  %106 = icmp eq i32 %105, 96
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %112

108:                                              ; preds = %102
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @QUOTE, align 4
  %111 = or i32 %109, %110
  br label %112

112:                                              ; preds = %108, %107
  %113 = phi i32 [ 96, %107 ], [ %111, %108 ]
  %114 = trunc i32 %113 to i8
  %115 = call i32 @Strbuf_append1(%struct.blk_buf* %104, i8 signext %114)
  br label %131

116:                                              ; preds = %100
  %117 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %118 = bitcast %struct.Strbuf* %117 to %struct.blk_buf*
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @QUOTE, align 4
  %121 = or i32 %119, %120
  %122 = trunc i32 %121 to i8
  %123 = call i32 @Strbuf_append1(%struct.blk_buf* %118, i8 signext %122)
  br label %131

124:                                              ; preds = %100
  %125 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %126 = bitcast %struct.Strbuf* %125 to %struct.blk_buf*
  %127 = load i32, i32* %4, align 4
  %128 = trunc i32 %127 to i8
  %129 = call i32 @Strbuf_append1(%struct.blk_buf* %126, i8 signext %128)
  br label %131

130:                                              ; preds = %100
  br label %131

131:                                              ; preds = %130, %124, %116, %112
  br label %47

132:                                              ; preds = %53
  %133 = load i32, i32* %5, align 4
  %134 = icmp eq i32 %133, 96
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %137 = bitcast %struct.Strbuf* %136 to %struct.blk_buf*
  %138 = call i32 @Strbuf_append1(%struct.blk_buf* %137, i8 signext 96)
  br label %139

139:                                              ; preds = %135, %132
  store i32 1, i32* %8, align 4
  %140 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %141 = bitcast %struct.Strbuf* %140 to %struct.blk_buf*
  %142 = call i64 @Dpack(%struct.blk_buf* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %168

145:                                              ; preds = %139
  br label %16

146:                                              ; preds = %16
  %147 = call i32 @DgetC(i32 0)
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp eq i32 %148, 10
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %4, align 4
  %152 = icmp eq i32 %151, 128
  br i1 %152, label %153, label %154

153:                                              ; preds = %150, %146
  br label %16

154:                                              ; preds = %150
  %155 = load i32, i32* @QUOTE, align 4
  %156 = load i32, i32* %4, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %4, align 4
  br label %159

158:                                              ; preds = %16
  br label %159

159:                                              ; preds = %158, %154
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @unDgetC(i32 %160)
  store i32 1, i32* %8, align 4
  %162 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %163 = bitcast %struct.Strbuf* %162 to %struct.blk_buf*
  %164 = call i64 @Dpack(%struct.blk_buf* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %168

167:                                              ; preds = %159
  br label %16

168:                                              ; preds = %166, %144, %30
  %169 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %170 = bitcast %struct.Strbuf* %169 to %struct.blk_buf*
  %171 = call i32 @cleanup_ignore(%struct.blk_buf* %170)
  %172 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %173 = bitcast %struct.Strbuf* %172 to %struct.blk_buf*
  %174 = call i32 @cleanup_until(%struct.blk_buf* %173)
  %175 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %176 = bitcast %struct.Strbuf* %175 to %struct.blk_buf*
  %177 = call i8* @Strbuf_finish(%struct.blk_buf* %176)
  store i8* %177, i8** %9, align 8
  %178 = load %struct.blk_buf*, %struct.blk_buf** %3, align 8
  %179 = load i8*, i8** %9, align 8
  %180 = call i32 @bb_append(%struct.blk_buf* %178, i8* %179)
  %181 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %182 = bitcast %struct.Strbuf* %181 to %struct.blk_buf*
  %183 = call i32 @xfree(%struct.blk_buf* %182)
  store i32 1, i32* %2, align 4
  br label %184

184:                                              ; preds = %168, %23
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local %struct.blk_buf* @Strbuf_alloc(...) #1

declare dso_local i32 @cleanup_push(%struct.blk_buf*, i32) #1

declare dso_local i32 @DgetC(i32) #1

declare dso_local i32 @cleanup_until(%struct.blk_buf*) #1

declare dso_local i32 @unDredc(i32) #1

declare dso_local i32 @Strbuf_append1(%struct.blk_buf*, i8 signext) #1

declare dso_local i32 @stderror(i32, i32) #1

declare dso_local i64 @Dpack(%struct.blk_buf*) #1

declare dso_local i32 @unDgetC(i32) #1

declare dso_local i32 @cleanup_ignore(%struct.blk_buf*) #1

declare dso_local i8* @Strbuf_finish(%struct.blk_buf*) #1

declare dso_local i32 @bb_append(%struct.blk_buf*, i8*) #1

declare dso_local i32 @xfree(%struct.blk_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
